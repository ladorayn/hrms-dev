import 'package:hrms_mobile/features/business_trip/data/models/request/business_trip_request.dart';
import 'package:hrms_mobile/features/business_trip/data/models/response/business_trip_response.dart';

abstract class BusinessTripRepository {
  Future<List<BusinessTripData>> getBusinessTrips();
  Future<BusinessTripData> getBusinessTripDetail(int id);
  Future<void> createBusinessTrip(BusinessTripRequest request);
  Future<void> cancelBusinessTrip(int id);
}
