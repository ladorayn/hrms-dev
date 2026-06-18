import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/enums/attendance_enum.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/branch/branch_list_response_model.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/attendance_provider.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/branch_provider.dart';
import 'package:hrms_mobile/features/attendance/presentation/widgets/location_verification_dialog.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';

import 'package:hrms_mobile/core/widgets/toastbar.dart';

class SelectBranchScreen extends ConsumerStatefulWidget {
  final AttendanceEnum activity;

  const SelectBranchScreen({super.key, required this.activity});

  @override
  ConsumerState<SelectBranchScreen> createState() => _SelectBranchScreenState();
}

class _SelectBranchScreenState extends ConsumerState<SelectBranchScreen> {
  int? _selectedBranchId;
  String _searchQuery = "";
  Timer? _debounceTimer;

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(paginatedBranchesProvider(search: _searchQuery).notifier).fetchNextPage();
    }
  }

  void _onSearchChanged(String value) {
    if (_debounceTimer?.isActive ?? false) _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      setState(() {
        _searchQuery = value;
      });
    });
  }

  void _onConfirm() {
    if (_selectedBranchId != null) {
      ref.read(attendanceProvider.notifier).setBranchId(_selectedBranchId);
      handleLocationVerification(context, widget.activity, ref,
          selectedBranchId: _selectedBranchId);
    }
  }

  @override
  Widget build(BuildContext context) {
    final authP = ref.watch(authProvider);
    final defaultBranch = authP.value?.branch;
    
    // Automatically select default branch if none selected initially
    if (_selectedBranchId == null && defaultBranch != null) {
      _selectedBranchId = defaultBranch.id;
    }

    final branchesAsync =
        ref.watch(paginatedBranchesProvider(search: _searchQuery));

    ref.listen(paginatedBranchesProvider(search: _searchQuery), (previous, next) {
      if (next is AsyncError) {
        showCustomToast(context, next.error.toString(), ToastType.error);
      }
    });

    return Scaffold(
      appBar: IAppBar(title: 'Select Branch'),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'QUICK ${widget.activity == AttendanceEnum.clockIn ? 'CLOCK-IN' : 'CLOCK-OUT'}',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: IColors.light.grayscale.g60,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        if (defaultBranch != null)
                          _buildDefaultBranchCard(defaultBranch),
                        SizedBox(height: 24.h),
                        TextField(
                          onChanged: _onSearchChanged,
                          decoration: InputDecoration(
                            hintText: 'Search branches...',
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: IColors.light.grayscale.g30,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: IColors.light.grayscale.g30,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 24.h),
                        Text(
                          'AVAILABLE LOCATIONS',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: IColors.light.grayscale.g60,
                          ),
                        ),
                        SizedBox(height: 8.h),
                      ],
                    ),
                  ),
                ),
                branchesAsync.when(
                  data: (branches) {
                    if (branches.isEmpty) {
                      return SliverToBoxAdapter(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Text('No branches found.'),
                          ),
                        ),
                      );
                    }
                    return SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            if (index == branches.length) {
                              return Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Center(child: CircularProgressIndicator()),
                              );
                            }
                            final branch = branches[index];
                            return _buildBranchCard(branch);
                          },
                          // Add 1 for the loading indicator if we might have more pages
                          // Actually, we'd need to know if there's a next page. 
                          // The provider handles it, but just showing branches is fine for now.
                          childCount: branches.length,
                        ),
                      ),
                    );
                  },
                  loading: () => SliverToBoxAdapter(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                  error: (err, stack) => const SliverToBoxAdapter(
                    child: SizedBox.shrink(),
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: 32.h)),
              ],
            ),
          ),
          IFooterButton(
            onPressed: _selectedBranchId != null ? _onConfirm : null,
            text: "Confirm Selection",
          ),
        ],
      ),
    );
  }

  Widget _buildDefaultBranchCard(dynamic branch) {
    // Assuming branch from AuthProvider has id and name
    final isSelected = _selectedBranchId == branch.id;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedBranchId = branch.id;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? IColors.light.primary.main : IColors.light.grayscale.g30,
            width: isSelected ? 2 : 1,
          ),
          color: isSelected ? IColors.light.primary.background : Colors.white,
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Default Branch',
                    style: TextStyle(
                      color: IColors.light.primary.main,
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    branch.name ?? '-',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: IColors.light.primary.background,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.bolt,
                color: IColors.light.primary.main,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBranchCard(BranchData branch) {
    final isSelected = _selectedBranchId == branch.id;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedBranchId = branch.id;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? IColors.light.primary.main : IColors.light.grayscale.g30,
            width: isSelected ? 2 : 1,
          ),
          color: isSelected ? IColors.light.primary.background : Colors.white,
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.storefront_outlined,
              color: isSelected ? IColors.light.primary.main : IColors.light.grayscale.g60,
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    branch.name ?? '-',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 14.sp,
                        color: IColors.light.grayscale.g60,
                      ),
                      SizedBox(width: 4.w),
                      Expanded(
                        child: Text(
                          branch.address ?? '-',
                          style: TextStyle(
                            color: IColors.light.grayscale.g60,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (isSelected)
              Icon(
                Icons.check_circle,
                color: IColors.light.primary.main,
              ),
          ],
        ),
      ),
    );
  }
}
