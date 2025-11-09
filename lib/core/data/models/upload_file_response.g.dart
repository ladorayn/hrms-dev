// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_file_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadFileImpl _$$UploadFileImplFromJson(Map<String, dynamic> json) =>
    _$UploadFileImpl(
      path: json['path'] as String,
      disk: json['disk'] as String,
      filename: json['filename'] as String,
      mimeType: json['mime_type'] as String,
      size: (json['size'] as num).toInt(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$UploadFileImplToJson(_$UploadFileImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'disk': instance.disk,
      'filename': instance.filename,
      'mime_type': instance.mimeType,
      'size': instance.size,
      'url': instance.url,
    };
