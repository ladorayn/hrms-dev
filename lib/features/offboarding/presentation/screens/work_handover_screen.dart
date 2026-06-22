import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/data/models/employees/employees_response.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_dropdown_multi_select.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/handover_bulk_update_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_handover_item_response.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_status_response.dart';
import 'package:hrms_mobile/features/offboarding/presentation/providers/offboarding_provider.dart';

class HandoverItem {
  final int id;
  final TextEditingController worksController;
  List<Employee> selectedEmployees;

  HandoverItem({
    required this.id,
    required this.worksController,
    this.selectedEmployees = const [],
  });
}

class WorkHandoverScreen extends ConsumerStatefulWidget {
  final OffboardingStatusResponse data;

  const WorkHandoverScreen({super.key, required this.data});

  @override
  ConsumerState<WorkHandoverScreen> createState() => _WorkHandoverScreenState();
}

class _WorkHandoverScreenState extends ConsumerState<WorkHandoverScreen> {
  final List<HandoverItem> _handoverItems = [];
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    for (var item in _handoverItems) {
      item.worksController.dispose();
    }
    super.dispose();
  }

  void _populateExistingData(List<HandoverItems> existingData) {
    if (_isInitialized) return;

    setState(() {
      if (existingData.isEmpty) {
        _addNewHandoverItem();
      } else {
        for (var item in existingData) {
          _handoverItems.add(
            HandoverItem(
              id: item.id,
              worksController: TextEditingController(text: item.name),
              selectedEmployees: item.recipients
                      ?.map((r) => Employee(
                            userId: r.user?.id,
                            name: r.user?.name,
                            email: r.user?.email,
                          ))
                      .toList() ??
                  [],
            ),
          );
        }
      }
      _isInitialized = true;
    });
  }

  void _addNewHandoverItem() {
    setState(() {
      _handoverItems.add(
        HandoverItem(
          id: DateTime.now().millisecondsSinceEpoch,
          worksController: TextEditingController(),
          selectedEmployees: [],
        ),
      );
    });
  }

  void _removeHandoverItem(int index) {
    setState(() {
      _handoverItems[index].worksController.dispose();
      _handoverItems.removeAt(index);
    });
  }

  void _showSnackBar(String message, {bool isError = false}) {
    if (!mounted) return;
    showCustomToast(context, message, ToastType.info);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final handoverState = ref.watch(handoverSubmissionProvider);
    final existingDataAsync = ref.watch(offboardingGetHandoverItemProvider(
      request: HandoverCategoryItemRequest(
        category: 'work',
      ),
    ));

    existingDataAsync.whenData((data) => _populateExistingData(data));

    ref.listen(handoverSubmissionProvider, (_, state) {
      state.whenOrNull(
        error: (e, s) => _showSnackBar(e.toString(), isError: true),
        data: (data) {
          if (data != null) {
            _showSnackBar(l10n.offboardingHandoverSubmitted);
            ref.invalidate(offboardingProgressPProvider(id: widget.data.id));
            Navigator.of(context).pop();
          }
        },
      );
    });

    Future<void> onSubmit() async {
      for (var item in _handoverItems) {
        if (item.worksController.text.isEmpty) {
          _showSnackBar(l10n.offboardingFillWorksFields, isError: true);
          return;
        }
        if (item.selectedEmployees.isEmpty) {
          _showSnackBar(l10n.offboardingSelectRecipient, isError: true);
          return;
        }
      }

      final List<HandoverItemRequest> items = _handoverItems.map((item) {
        final List<RecipientRequest> recipients =
            item.selectedEmployees.map((emp) {
          return RecipientRequest(
            userId: emp.userId ?? 0,
            status: 1,
          );
        }).toList();

        return HandoverItemRequest(
          category: 'work',
          name: item.worksController.text,
          recipients: recipients,
        );
      }).toList();

      final HandoverRequest request =
          HandoverRequest(category: "work", data: items);
      final int? offboardingId = widget.data.id;

      if (offboardingId == null) {
        _showSnackBar(l10n.offboardingIdNotFound, isError: true);
        return;
      }
      await ref.read(handoverSubmissionProvider.notifier).submitForm(
            request: request,
            offboardingId: offboardingId,
          );
    }

    return Scaffold(
      appBar: IAppBar(title: l10n.offboardingWorkHandover),
      body: existingDataAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(
            child: Text(l10n.offboardingErrorLoadingData(err.toString()))),
        data: (_) => Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                itemCount: _handoverItems.length,
                itemBuilder: (context, index) {
                  final item = _handoverItems[index];
                  return _buildHandoverCard(index, item, context);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: OutlinedButton.icon(
                onPressed: _addNewHandoverItem,
                icon: const Icon(Icons.add),
                label: Text(l10n.offboardingAdd),
                style: OutlinedButton.styleFrom(
                  foregroundColor: IColors.light.primary.main,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  side: BorderSide(
                    color: IColors.light.primary.main,
                    width: 1.5,
                  ),
                ),
              ),
            ),
            IFooterButton(
              text: handoverState.isLoading
                  ? l10n.offboardingSubmitting
                  : l10n.offboardingSubmit,
              onPressed: handoverState.isLoading ? null : onSubmit,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHandoverCard(
      int index, HandoverItem item, BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    return Card(
      margin: EdgeInsets.only(bottom: 16.h),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ITextFieldTextArea(
                      controller: item.worksController,
                      label: l10n.offboardingWorks,
                      hintText: '',
                      isRequired: true,
                      labelStyle: textTheme.bodySmall),
                  SizedBox(height: 16.h),
                  ITextFieldDropdownMultiSelect<Employee>(
                    label: l10n.offboardingHandedOverTo,
                    isRequired: true,
                    selectedItems: item.selectedEmployees,
                    itemToString: (employee) => employee.name ?? '-',
                    onSelectionConfirmed: (newSelection) {
                      setState(() {
                        final uniqueIds = <int>{};
                        item.selectedEmployees = newSelection.where((emp) {
                          if (emp.userId == null) return false;
                          return uniqueIds.add(emp.userId!);
                        }).toList();
                      });
                    },
                    customSheetBuilder: (context, initialSelection) {
                      return EmployeeSelectionSheet(
                        initialSelectedEmployees: initialSelection,
                      );
                    },
                  ),
                ],
              ),
            ),
            if (_handoverItems.length > 1)
              Padding(
                padding: EdgeInsets.only(left: 8.w, top: 24.h),
                child: GestureDetector(
                  onTap: () => _removeHandoverItem(index),
                  child: SvgPicture.asset(
                    IAssets.delete,
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class EmployeeSelectionSheet extends ConsumerStatefulWidget {
  final List<Employee> initialSelectedEmployees;

  const EmployeeSelectionSheet({
    super.key,
    required this.initialSelectedEmployees,
  });

  @override
  ConsumerState<EmployeeSelectionSheet> createState() =>
      _EmployeeSelectionSheetState();
}

class _EmployeeSelectionSheetState
    extends ConsumerState<EmployeeSelectionSheet> {
  late List<Employee> _tempSelectedEmployees;
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _tempSelectedEmployees = List.from(widget.initialSelectedEmployees);
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (mounted) {
        setState(() {
          _searchQuery = _searchController.text;
        });
      }
    });
  }

  void _onScroll(ScrollController controller) {
    if (controller.position.pixels >=
        controller.position.maxScrollExtent - 200) {
      ref
          .read(paginatedEmployeeProvider(search: _searchQuery).notifier)
          .fetchNextPage(search: _searchQuery);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final asyncEmployees = ref.watch(paginatedEmployeeProvider(
      search: _searchQuery,
    ));

    return DraggableScrollableSheet(
      initialChildSize: 0.8,
      minChildSize: 0.4,
      maxChildSize: 0.95,
      expand: false,
      builder: (_, scrollController) {
        scrollController.removeListener(() => _onScroll(scrollController));
        scrollController.addListener(() => _onScroll(scrollController));

        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: SafeArea(
            top: false,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(l10n.offboardingEmployees,
                          style: Theme.of(context).textTheme.titleLarge),
                      SizedBox(height: 12.h),
                      TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: l10n.offboardingSearchEmployee,
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: asyncEmployees.when(
                    data: (paginatedResponse) {
                      final employees = paginatedResponse.data;

                      return ListView.builder(
                        controller: scrollController,
                        padding: EdgeInsets.only(
                          left: 16.w,
                          right: 16.w,
                          bottom: 100.h,
                        ),
                        itemCount: employees.length,
                        itemBuilder: (context, index) {
                          final employee = employees[index];

                          final isSelected = _tempSelectedEmployees.any(
                              (element) => element.userId == employee.userId);

                          return CheckboxListTile(
                            title: Text(employee.name ?? '-'),
                            subtitle: Text(employee.jobPosition ?? '-'),
                            value: isSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                if (value == true) {
                                  if (!_tempSelectedEmployees.any(
                                      (e) => e.userId == employee.userId)) {
                                    _tempSelectedEmployees.add(employee);
                                  }
                                } else {
                                  _tempSelectedEmployees.removeWhere(
                                      (element) =>
                                          element.userId == employee.userId);
                                }
                              });
                            },
                          );
                        },
                      );
                    },
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (e, s) =>
                        Center(child: Text(l10n.offboardingError(e.toString()))),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 24.h),
                  color: Colors.white,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, _tempSelectedEmployees);
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
                    child: Text(l10n.offboardingDone),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
