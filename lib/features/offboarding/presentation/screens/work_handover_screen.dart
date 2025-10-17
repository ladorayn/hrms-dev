import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_dropdown_multi_select.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';

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

class HandoverItem {
  final int id; // Unique ID for each card
  final TextEditingController worksController;
  List<Employee> selectedEmployees;

  HandoverItem({
    required this.id,
    required this.worksController,
    this.selectedEmployees = const [],
  });
}

class WorkHandoverScreen extends ConsumerStatefulWidget {
  const WorkHandoverScreen({super.key});

  @override
  ConsumerState<WorkHandoverScreen> createState() => _WorkHandoverScreenState();
}

class _WorkHandoverScreenState extends ConsumerState<WorkHandoverScreen> {
  final List<HandoverItem> _handoverItems = [];

  final List<Employee> _allEmployees = [
    Employee(id: 1, name: 'Olivia Rhye', position: 'COO'),
    Employee(id: 2, name: 'Phoenix Baker', position: 'CTO'),
    Employee(id: 3, name: 'Lana Steiner', position: 'COO'),
    Employee(id: 4, name: 'Demi Wilkinson', position: 'Head of Product'),
    Employee(id: 5, name: 'Candice Wu', position: 'Head of Engineering'),
    Employee(id: 6, name: 'Natali Craig', position: 'Front End Engineer'),
    Employee(id: 7, name: 'Drew Cano', position: 'UX Copywriter'),
    Employee(id: 8, name: 'Orlando Diggs', position: 'Product Designer'),
    Employee(id: 9, name: 'Andi Lane', position: 'Product Designer'),
    Employee(id: 10, name: 'Kate Morrison', position: 'Back End Engineer'),
  ];

  @override
  void initState() {
    super.initState();
    _addNewHandoverItem();
  }

  @override
  void dispose() {
    for (var item in _handoverItems) {
      item.worksController.dispose();
    }
    super.dispose();
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
      // First, dispose the controller of the item being removed
      _handoverItems[index].worksController.dispose();
      _handoverItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    Future<void> onSubmit() async {
      // Collect all data from controllers and selected employees
      // and send to the API
    }

    return Scaffold(
      appBar: const IAppBar(title: "Work & Responsibilities Handover"),
      body: Column(
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

  Widget _buildHandoverCard(
      int index, HandoverItem item, BuildContext context) {
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
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align items to the top
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ITextFieldTextArea(
                      controller: item.worksController,
                      label: "Works",
                      hintText: '',
                      isRequired: true,
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

class EmployeeSelectionSheet extends StatefulWidget {
  final List<Employee> allEmployees;
  final List<Employee> initialSelectedEmployees;

  const EmployeeSelectionSheet({
    super.key,
    required this.allEmployees,
    required this.initialSelectedEmployees,
  });

  @override
  State<EmployeeSelectionSheet> createState() => _EmployeeSelectionSheetState();
}

class _EmployeeSelectionSheetState extends State<EmployeeSelectionSheet> {
  late List<Employee> _filteredEmployees;
  late List<Employee> _tempSelectedEmployees;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredEmployees = widget.allEmployees;
    _tempSelectedEmployees = List.from(widget.initialSelectedEmployees);
    _searchController.addListener(_filterEmployees);
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterEmployees);
    _searchController.dispose();
    super.dispose();
  }

  void _filterEmployees() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredEmployees = widget.allEmployees.where((employee) {
        return employee.name.toLowerCase().contains(query);
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
              Text('Employees', style: Theme.of(context).textTheme.titleLarge),
              SizedBox(height: 16.h),
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search Employee',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: ListView.builder(
                  controller: controller,
                  itemCount: _filteredEmployees.length,
                  itemBuilder: (context, index) {
                    final employee = _filteredEmployees[index];
                    final isSelected =
                        _tempSelectedEmployees.contains(employee);
                    return CheckboxListTile(
                      title: Text(employee.name),
                      subtitle: Text(employee.position),
                      value: isSelected,
                      onChanged: (bool? value) {
                        setState(() {
                          if (value == true) {
                            _tempSelectedEmployees.add(employee);
                          } else {
                            _tempSelectedEmployees.remove(employee);
                          }
                        });
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 16.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, _tempSelectedEmployees);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 48.h),
                ),
                child: const Text('Done'),
              )
            ],
          ),
        );
      },
    );
  }
}
