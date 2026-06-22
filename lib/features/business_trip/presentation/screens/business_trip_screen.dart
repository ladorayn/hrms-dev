import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/business_trip/presentation/providers/business_trip_provider.dart';
import 'package:hrms_mobile/features/business_trip/presentation/widgets/business_trip_item.dart';

class BusinessTripScreen extends ConsumerWidget {
  const BusinessTripScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final l10n = AppLocalizations.of(context)!;
    final businessTripsAsync = ref.watch(businessTripsProvider);

    return Scaffold(
      appBar: IAppBar(
        title: l10n.businessTripTitle,
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, viewportConstraints) {
            return ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: IColors.light.primary.main,
                            foregroundColor: Colors.white,
                            minimumSize: const Size.fromHeight(50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () async {
                            await globalNavigatorKey.currentContext
                                ?.push(RoutePaths.businessTripForm);
                            ref.invalidate(businessTripsProvider);
                          },
                          child: Text(l10n.businessTripNewRequest),
                        ),
                      ),
                      SizedBox(height: 16.sp),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  l10n.businessTripYourTrips,
                                  style: textTheme.titleMedium?.copyWith(
                                      color: IColors.light.primary.main),
                                ),
                                const SizedBox(height: 16),
                                Expanded(
                                  child: businessTripsAsync.when(
                                    data: (trips) {
                                      return RefreshIndicator(
                                        onRefresh: () async {
                                          ref.invalidate(businessTripsProvider);
                                          // Wait for the new future to complete
                                          try {
                                            await ref.read(businessTripsProvider.future);
                                          } catch (_) {}
                                        },
                                        child: trips.isEmpty
                                            ? ListView(
                                                physics: const AlwaysScrollableScrollPhysics(),
                                                children: [
                                                  SizedBox(height: MediaQuery.of(context).size.height * 0.3),
                                                  Center(
                                                    child: Text(l10n.businessTripNoTripsFound),
                                                  ),
                                                ],
                                              )
                                            : ListView.builder(
                                                physics: const AlwaysScrollableScrollPhysics(),
                                                itemCount: trips.length,
                                                itemBuilder: (context, index) {
                                                  final trip = trips[index];
                                                  return BusinessTripItem(request: trip);
                                                },
                                              ),
                                      );
                                    },
                                    loading: () => const Center(
                                        child: CircularProgressIndicator()),
                                    error: (err, stack) => Center(
                                        child: Text(l10n.businessTripFailedLoadData(err.toString()))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
