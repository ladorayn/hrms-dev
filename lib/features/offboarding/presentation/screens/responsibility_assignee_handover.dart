import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/inbox/data/models/response/notification_response.dart';
import 'package:hrms_mobile/features/offboarding/presentation/widgets/offboading_menu.dart';

class ResponsibilityAssigneeHandoverScreen extends ConsumerWidget {
  final OffboardingValidateHandoverPayload data;

  const ResponsibilityAssigneeHandoverScreen({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: IAppBar(title: "Responsibility Handover", noIcon: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              OffboardingMenu(
                icon: IAssets.workHandover,
                title: 'Work & Responsibilities Handover',
                onTap: () => context.pushNamed(
                  RoutePaths.workAssigneeHandoverName,
                  extra: data,
                ),
              ),
              OffboardingMenu(
                icon: IAssets.documentHandover,
                title: 'Document Handover',
                onTap: () => context.pushNamed(
                  RoutePaths.documentAssigneeHandoverName,
                  extra: data,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
