import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';

class ITextFieldDropdownMultiSelect<T> extends StatelessWidget {
  final String label;
  final bool isRequired;
  final List<T> selectedItems;
  final Function(List<T> newSelection) onSelectionConfirmed;
  final String Function(T item) itemToString;
  final Widget? suffixIcon;
  final int maxChipsToDisplay;

  final List<T>? allItems;
  final String? Function(T item)? itemToSubtitle;
  final String? bottomSheetTitle;
  final String? searchHintText;

  final Widget Function(BuildContext context, List<T> initialSelectedItems)?
      customSheetBuilder;

  const ITextFieldDropdownMultiSelect({
    super.key,
    required this.label,
    this.isRequired = false,
    required this.selectedItems,
    required this.onSelectionConfirmed,
    required this.itemToString,
    this.suffixIcon,
    this.maxChipsToDisplay = 2,
    this.allItems,
    this.itemToSubtitle,
    this.bottomSheetTitle,
    this.searchHintText,
    this.customSheetBuilder,
  }) : assert(
            (allItems != null && customSheetBuilder == null) ||
                (allItems == null && customSheetBuilder != null),
            'You must provide EITHER `allItems` OR a `customSheetBuilder`, but not both.');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(label, style: Theme.of(context).textTheme.bodyMedium),
            if (isRequired)
              Text(' *', style: TextStyle(color: Colors.red.shade700)),
          ],
        ),
        SizedBox(height: 8.h),
        GestureDetector(
          onTap: () async {
            List<T>? result;

            // 🚀 --- NEW LOGIC ---
            // If a custom builder is provided, use it.
            if (customSheetBuilder != null) {
              result = await showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20.r)),
                ),
                builder: (ctx) => customSheetBuilder!(ctx, selectedItems),
              );
            }
            // Otherwise, use the internal simple sheet.
            else {
              result = await showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20.r)),
                ),
                builder: (_) => _MultiSelectBottomSheet<T>(
                  allItems: allItems!,
                  initialSelectedItems: selectedItems,
                  bottomSheetTitle: bottomSheetTitle ?? 'Select Items',
                  searchHintText: searchHintText ?? 'Search...',
                  itemToString: itemToString,
                  itemToSubtitle: itemToSubtitle,
                ),
              );
            }

            if (result != null) {
              onSelectionConfirmed(result);
            }
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Wrap(
                    spacing: 4.w,
                    runSpacing: 4.h,
                    children: selectedItems.isEmpty
                        ? [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.h),
                              child: Text('Select...',
                                  style:
                                      TextStyle(color: Colors.grey.shade600)),
                            )
                          ]
                        : [
                            ...selectedItems
                                .take(maxChipsToDisplay)
                                .map((item) {
                              return SizedBox(
                                width: 80.w,
                                child: Chip(
                                  label: Text(
                                    itemToString(item),
                                    style: TextStyle(
                                      color: IColors.light.primary.hover,
                                      fontSize: 10.sp,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                  backgroundColor:
                                      IColors.light.primary.focused,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  side: BorderSide.none,
                                  labelPadding:
                                      EdgeInsets.symmetric(horizontal: 4.w),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.w, vertical: 4.h),
                                ),
                              );
                            }),
                            if (selectedItems.length > maxChipsToDisplay)
                              SizedBox(
                                width: 55.w,
                                child: Chip(
                                  label: Text(
                                    '+${selectedItems.length - maxChipsToDisplay}',
                                    style: TextStyle(
                                        color: IColors.light.primary.hover,
                                        fontSize: 10.sp),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                  backgroundColor:
                                      IColors.light.primary.focused,
                                  shape: const CircleBorder(),
                                  side: BorderSide.none,
                                ),
                              ),
                          ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: suffixIcon ??
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: IColors.light.grayscale.g30,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _MultiSelectBottomSheet<T> extends StatefulWidget {
  final List<T> allItems;
  final List<T> initialSelectedItems;
  final String bottomSheetTitle;
  final String searchHintText;
  final String Function(T item) itemToString;
  final String? Function(T item)? itemToSubtitle;

  const _MultiSelectBottomSheet({
    required this.allItems,
    required this.initialSelectedItems,
    required this.bottomSheetTitle,
    required this.searchHintText,
    required this.itemToString,
    this.itemToSubtitle,
  });

  @override
  State<_MultiSelectBottomSheet<T>> createState() =>
      _MultiSelectBottomSheetState<T>();
}

class _MultiSelectBottomSheetState<T>
    extends State<_MultiSelectBottomSheet<T>> {
  late List<T> _filteredItems;
  late List<T> _tempSelectedItems;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredItems = widget.allItems;
    _tempSelectedItems = List.from(widget.initialSelectedItems);
    _searchController.addListener(_filterItems);
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterItems);
    _searchController.dispose();
    super.dispose();
  }

  void _filterItems() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredItems = widget.allItems.where((item) {
        return widget.itemToString(item).toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.8,
      maxChildSize: 0.8,
      expand: false,
      builder: (_, controller) {
        return Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.bottomSheetTitle,
                  style: Theme.of(context).textTheme.titleLarge),
              SizedBox(height: 16.h),
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: widget.searchHintText,
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: ListView.separated(
                  controller: controller,
                  itemCount: _filteredItems.length,
                  separatorBuilder: (context, index) => Divider(
                    color: IColors.light.grayscale.g20,
                  ),
                  itemBuilder: (context, index) {
                    final item = _filteredItems[index];
                    final isSelected = _tempSelectedItems.contains(item);
                    return InkWell(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            _tempSelectedItems.remove(item);
                          } else {
                            _tempSelectedItems.add(item);
                          }
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 24.w + 16.w,
                              height: 24.h,
                              child: Checkbox(
                                value: isSelected,
                                onChanged: (bool? value) {
                                  setState(() {
                                    if (value == true) {
                                      _tempSelectedItems.add(item);
                                    } else {
                                      _tempSelectedItems.remove(item);
                                    }
                                  });
                                },
                                activeColor: IColors.light.primary.main,
                                checkColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.r),
                                ),
                                side: BorderSide(
                                    color: Colors.grey.shade400, width: 2),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Expanded(
                              child: Text(
                                widget.itemToString(item),
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                            if (widget.itemToSubtitle != null &&
                                widget.itemToSubtitle!(item) != null)
                              Text(
                                widget.itemToSubtitle!(item)!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: Colors.grey.shade600),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, _tempSelectedItems);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: IColors.light.primary.main,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: IColors.light.primary.main),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: Size(double.infinity, 48.h),
                ),
                child: const Text('udah'),
              )
            ],
          ),
        );
      },
    );
  }
}
