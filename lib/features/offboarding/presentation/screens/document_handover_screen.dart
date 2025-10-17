import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/base/i_text_field.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_dropdown_multi_select.dart';

class Employee {
  final int id;
  final String name;
  final String position;

  Employee({required this.id, required this.name, required this.position});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Employee && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}

class DocumentHandoverItem {
  final int id;
  final TextEditingController documentController;
  List<Employee> selectedEmployees;

  DocumentHandoverItem({
    required this.id,
    required this.documentController,
    this.selectedEmployees = const [],
  });
}

class DocumentHandoverScreen extends ConsumerStatefulWidget {
  const DocumentHandoverScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DocumentHandoverScreenState();
}

class _DocumentHandoverScreenState
    extends ConsumerState<DocumentHandoverScreen> {
  final List<DocumentHandoverItem> _documentHandoverItems = [];

  final List<Employee> _allEmployees = [
    Employee(id: 1, name: 'Olivia Rhye', position: 'COO'),
    Employee(id: 2, name: 'Phoenix Baker', position: 'CTO'),
    Employee(id: 3, name: 'Lana Steiner', position: 'COO'),
    Employee(id: 4, name: 'Demi Wilkinson', position: 'Head of Product'),
    Employee(id: 5, name: 'Candice Wu', position: 'Head of Engineering'),
  ];

  @override
  void initState() {
    super.initState();
    _addNewDocumentHandoverItem();
  }

  @override
  void dispose() {
    for (var item in _documentHandoverItems) {
      item.documentController.dispose();
    }
    super.dispose();
  }

  void _addNewDocumentHandoverItem() {
    setState(() {
      _documentHandoverItems.add(
        DocumentHandoverItem(
          id: DateTime.now().millisecondsSinceEpoch,
          documentController: TextEditingController(),
          selectedEmployees: [],
        ),
      );
    });
  }

  void _removeDocumentHandoverItem(int index) {
    setState(() {
      _documentHandoverItems[index].documentController.dispose();
      _documentHandoverItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    Future<void> onSubmit() async {
      // Logic to submit document handover data
    }
    return Scaffold(
      appBar: const IAppBar(title: "Document Handover"),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              itemCount: _documentHandoverItems.length,
              itemBuilder: (context, index) {
                final item = _documentHandoverItems[index];
                return _buildDocumentHandoverCard(index, item);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: OutlinedButton.icon(
              onPressed: _addNewDocumentHandoverItem,
              icon: const Icon(Icons.add),
              label: const Text('Add'),
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, 48.h),
              ),
            ),
          ),
          IFooterButton(
            text: "Submit",
            onPressed: onSubmit,
          ),
        ],
      ),
    );
  }

  Widget _buildDocumentHandoverCard(int index, DocumentHandoverItem item) {
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
                  // Changed label from "Works" to "Document"
                  ITextFieldBase(
                      controller: item.documentController,
                      label: "Document Name",
                      hintText: '',
                      isRequired: true,
                      borderColor: IColors.light.grayscale.g30,
                      labelStyle: textTheme.bodySmall),
                  SizedBox(height: 16.h),
                  ITextFieldDropdownMultiSelect<Employee>(
                    label: 'Handed Over To',
                    isRequired: true,
                    allItems: _allEmployees,
                    selectedItems: item.selectedEmployees,
                    bottomSheetTitle: 'Employees',
                    searchHintText: 'Search Employee',
                    itemToString: (employee) => employee.name,
                    itemToSubtitle: (employee) => employee.position,
                    onSelectionConfirmed: (newSelection) {
                      setState(() {
                        item.selectedEmployees = newSelection;
                      });
                    },
                  ),
                ],
              ),
            ),
            if (_documentHandoverItems.length > 1)
              Padding(
                padding: EdgeInsets.only(left: 8.w, top: 24.h),
                child: GestureDetector(
                  onTap: () => _removeDocumentHandoverItem(index),
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
