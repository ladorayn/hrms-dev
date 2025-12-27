import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_list.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/okr/dashboard_tab.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/okr/okr_tab.dart';

class OKRScreen extends ConsumerWidget {
  final String period;
  final OKRList okr;

  const OKRScreen({super.key, required this.period, required this.okr});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: IAppBar(title: "My OKR - $period"),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: TabBar(
                labelColor: IColors.light.primary.main,
                unselectedLabelColor: IColors.light.grayscale.g60,
                indicatorColor: IColors.light.primary.main,
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle:
                    textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                tabs: const [
                  Tab(text: "OKR"),
                  Tab(text: "Dashboard"),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  OKRTab(okrList: okr),
                  DashboardTab(okrList: okr),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
