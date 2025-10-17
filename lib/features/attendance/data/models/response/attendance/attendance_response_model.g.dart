// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceDataImpl _$$AttendanceDataImplFromJson(Map<String, dynamic> json) =>
    _$AttendanceDataImpl(
      id: (json['id'] as num).toInt(),
      attendanceDate: json['attendance_date'] as String,
      clock: Clock.fromJson(json['clock'] as Map<String, dynamic>),
      duration: json['duration'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      status: (json['status'] as num).toInt(),
      clockInStatus: (json['clock_in_status'] as num?)?.toInt(),
      clockOutStatus: (json['clock_out_status'] as num?)?.toInt(),
      statusLabel: json['status_label'] as String?,
      clockInStatusLabel: json['clock_in_status_label'] as String?,
      clockOutStatusLabel: json['clock_out_status_label'] as String?,
      notes: json['notes'] as String?,
      approvedAt: json['approved_at'] as String?,
      rejectedReason: json['rejected_reason'] as String?,
      remarks: json['remarks'] as String?,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$AttendanceDataImplToJson(
        _$AttendanceDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attendance_date': instance.attendanceDate,
      'clock': instance.clock,
      'duration': instance.duration,
      'location': instance.location,
      'status': instance.status,
      'clock_in_status': instance.clockInStatus,
      'clock_out_status': instance.clockOutStatus,
      'status_label': instance.statusLabel,
      'clock_in_status_label': instance.clockInStatusLabel,
      'clock_out_status_label': instance.clockOutStatusLabel,
      'notes': instance.notes,
      'approved_at': instance.approvedAt,
      'rejected_reason': instance.rejectedReason,
      'remarks': instance.remarks,
      'metadata': instance.metadata,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$ClockImpl _$$ClockImplFromJson(Map<String, dynamic> json) => _$ClockImpl(
      inAt: json['in_at'] as String?,
      outAt: json['out_at'] as String?,
      duration: json['duration'] as String?,
      overtimeDuration: (json['overtime_duration'] as num?)?.toInt(),
      overtimeDurationFormatted: json['overtime_duration_fomated'] as String?,
    );

Map<String, dynamic> _$$ClockImplToJson(_$ClockImpl instance) =>
    <String, dynamic>{
      'in_at': instance.inAt,
      'out_at': instance.outAt,
      'duration': instance.duration,
      'overtime_duration': instance.overtimeDuration,
      'overtime_duration_fomated': instance.overtimeDurationFormatted,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$MetadataImpl _$$MetadataImplFromJson(Map<String, dynamic> json) =>
    _$MetadataImpl(
      createdVia: json['created_via'] as String?,
      createdAt: json['created_at'] as String?,
      shiftId: (json['shift_id'] as num?)?.toInt(),
      shiftName: json['shift_name'] as String?,
      dayOfWeek: (json['day_of_week'] as num?)?.toInt(),
      toleranceMinutes: (json['tolerance_minutes'] as num?)?.toInt(),
      workScheduleId: (json['work_schedule_id'] as num?)?.toInt(),
      locationName: json['location_name'] as String?,
      expectedStartTime: json['expected_start_time'] as String?,
      expectedEndTime: json['expected_end_time'] as String?,
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MetadataImplToJson(_$MetadataImpl instance) =>
    <String, dynamic>{
      'created_via': instance.createdVia,
      'created_at': instance.createdAt,
      'shift_id': instance.shiftId,
      'shift_name': instance.shiftName,
      'day_of_week': instance.dayOfWeek,
      'tolerance_minutes': instance.toleranceMinutes,
      'work_schedule_id': instance.workScheduleId,
      'location_name': instance.locationName,
      'expected_start_time': instance.expectedStartTime,
      'expected_end_time': instance.expectedEndTime,
      'coordinates': instance.coordinates,
    };

_$CoordinatesImpl _$$CoordinatesImplFromJson(Map<String, dynamic> json) =>
    _$CoordinatesImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CoordinatesImplToJson(_$CoordinatesImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
