import 'package:hrms_mobile/features/business_trip/data/data_sources/business_trip_remote_source.dart';
import 'package:hrms_mobile/features/business_trip/data/models/request/business_trip_request.dart';
import 'package:hrms_mobile/features/business_trip/data/models/response/business_trip_response.dart';
import 'package:hrms_mobile/features/business_trip/domain/repositories/business_trip_repository.dart';

class BusinessTripRepositoryImpl implements BusinessTripRepository {
  final BusinessTripRemoteSource remoteSource;

  BusinessTripRepositoryImpl({required this.remoteSource});

  @override
  Future<List<BusinessTripData>> getBusinessTrips() async {
    final response = await remoteSource.getBusinessTrips();
    return response.data ?? [];
  }

  @override
  Future<BusinessTripData> getBusinessTripDetail(int id) async {
    final response = await remoteSource.getBusinessTripDetail(id);
    return response.data!;
  }

  @override
  Future<void> createBusinessTrip(BusinessTripRequest request) async {
    await remoteSource.createBusinessTrip(request);
  }

  @override
  Future<void> cancelBusinessTrip(int id) async {
    await remoteSource.cancelBusinessTrip(id);
  }
}
