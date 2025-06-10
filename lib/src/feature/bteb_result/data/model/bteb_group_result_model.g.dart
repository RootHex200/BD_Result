// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bteb_group_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BtebGroupResultModelImpl _$$BtebGroupResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BtebGroupResultModelImpl(
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BtebGroupResultModelImplToJson(
        _$BtebGroupResultModelImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'total': instance.total,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      sId: json['_id'] as String?,
      technology: json['technology'] as String?,
      results: json['results'] == null
          ? null
          : Results.fromJson(json['results'] as Map<String, dynamic>),
      semester: json['semester'] as String?,
      regulation: json['regulation'],
      date: json['Date'] as String?,
      roll: json['roll'] as String?,
      institute: json['institute'],
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'technology': instance.technology,
      'results': instance.results,
      'semester': instance.semester,
      'regulation': instance.regulation,
      'Date': instance.date,
      'roll': instance.roll,
      'institute': instance.institute,
    };
