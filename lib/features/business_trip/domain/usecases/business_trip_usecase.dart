import 'package:hrms_mobile/features/business_trip/data/models/request/business_trip_request.dart';
import 'package:hrms_mobile/features/business_trip/data/models/response/business_trip_response.dart';
import 'package:hrms_mobile/features/business_trip/domain/repositories/business_trip_repository.dart';

class BusinessTripUsecase {
  final BusinessTripRepository repository;

  BusinessTripUsecase(this.repository);

  Future<List<BusinessTripData>> getBusinessTrips() {
    return repository.getBusinessTrips();
  }

  Future<BusinessTripData> getBusinessTripDetail(int id) {
    return repository.getBusinessTripDetail(id);
  }

  Future<void> createBusinessTrip(BusinessTripRequest request) {
    return repository.createBusinessTrip(request);
  }

  Future<void> cancelBusinessTrip(int id) {
    return repository.cancelBusinessTrip(id);
  }
}
