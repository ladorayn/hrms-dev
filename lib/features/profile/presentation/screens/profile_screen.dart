// features/profile/presentation/screens/profile_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/logout/logout_provider.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: [
                        // --- Custom App Bar ---
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          // Pass ref to the _buildAppBar method
                          child: _buildAppBar(context, ref),
                        ),
                        const SizedBox(height: 24),

                        // --- User Info Section ---
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: _buildUserInfo(),
                        ),
                        const SizedBox(height: 24),

                        // --- Stats Card ---
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: _buildStatsCard(),
                        ),
                        const SizedBox(height: 32),

                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 20),
                                // --- Menu Items ---
                                _ProfileMenuItem(
                                  icon: Icons.person_outline,
                                  title: 'My Profile',
                                  onTap: () {},
                                ),
                                _ProfileMenuItem(
                                  icon: Icons.history_toggle_off_outlined,
                                  title: 'Attendance and Overtime',
                                  onTap: () {},
                                ),
                                _ProfileMenuItem(
                                  icon: Icons.wallet_outlined,
                                  title: 'My Payslip',
                                  onTap: () {},
                                ),
                                _ProfileMenuItem(
                                  icon: Icons.description_outlined,
                                  title: 'Document',
                                  onTap: () {},
                                ),
                                _ProfileMenuItem(
                                  icon: Icons.gavel_outlined,
                                  title: 'Penalty',
                                  onTap: () {},
                                  showDivider: false,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            // The style is minimal by default
            style: TextButton.styleFrom(
              foregroundColor: Colors.grey,
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () {
              ref.read(logoutProvider.notifier).submit();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Log Out',
                  style: TextStyle(color: IColors.light.error.main),
                ),
                const SizedBox(width: 8),
                SvgPicture.asset(IAssets.logout),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUserInfo() {
    return Column(
      children: [
        const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/phoenix_baker.png'),
        ),
        const SizedBox(height: 16),
        const Text(
          'Phoenix Baker',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Employee ID: 002',
          style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
        ),
        const SizedBox(height: 4),
        Text(
          'Product Designer • Full Time',
          style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildStatsCard() {
    return Container(
      decoration: BoxDecoration(
        color: IColors.light.primary.focused,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(4),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: IColors.light.primary.foreground,
          border: Border.all(
            color: IColors.light.primary.border,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: IntrinsicHeight(
          child: Column(
            children: [
              const Text(
                'August 2025',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStatItem(
                      iconAsset: IAssets.attendanceClock,
                      value: '20',
                      label: 'Days',
                      description: 'Attendance'),
                  Container(
                    width: 1,
                    height: 50,
                    color: IColors.light.grayscale.g20,
                  ),
                  _buildStatItem(
                      iconAsset: IAssets.timeOff,
                      value: '2/15',
                      label: 'Days',
                      description: 'Time Off'),
                  Container(
                    width: 1,
                    height: 50,
                    color: IColors.light.grayscale.g20,
                  ),
                  _buildStatItem(
                      iconAsset: IAssets.overtimeClock,
                      value: '62',
                      label: 'Hours',
                      description: 'Overtime'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(
      {required String iconAsset,
      required String value,
      required String label,
      required String description}) {
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(iconAsset, width: 20),
              const SizedBox(width: 8),
              Text(value,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(width: 4),
              Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
                child: Text(label,
                    style:
                        TextStyle(color: Colors.grey.shade600, fontSize: 12)),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(description,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 12)),
        ],
      ),
    );
  }
}

class _ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool showDivider;

  const _ProfileMenuItem({
    required this.icon,
    required this.title,
    required this.onTap,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: Icon(icon, color: Colors.grey.shade700),
          title:
              Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: IColors.light.grayscale.g20,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 30),
        ),
        if (showDivider) Divider(height: 1, color: IColors.light.grayscale.g10),
      ],
    );
  }
}
