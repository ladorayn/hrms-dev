import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/offboarding/presentation/widgets/offboading_menu.dart';

class ResponsibilityAssigneeHandoverScreen extends ConsumerWidget {
  const ResponsibilityAssigneeHandoverScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: IAppBar(
        title: "Responsibility Handover",
        noIcon: true,
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, viewportConstraints) {
            return ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              OffboardingMenu(
                                icon: IAssets.workHandover,
                                title: 'Work & Responsibilities Handover',
                                onTap: () {
                                  globalNavigatorKey.currentContext?.pushNamed(
                                    RoutePaths.workAssigneeHandoverName,
                                  );
                                },
                              ),
                              OffboardingMenu(
                                icon: IAssets.documentHandover,
                                title: 'Document Handover',
                                onTap: () {
                                  globalNavigatorKey.currentContext?.pushNamed(
                                    RoutePaths.documentAssigneeHandoverName,
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
