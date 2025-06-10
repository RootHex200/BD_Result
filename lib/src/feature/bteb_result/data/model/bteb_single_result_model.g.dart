// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bteb_single_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BtebSingleResultModelImpl _$$BtebSingleResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BtebSingleResultModelImpl(
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

Map<String, dynamic> _$$BtebSingleResultModelImplToJson(
        _$BtebSingleResultModelImpl instance) =>
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

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      passed: json['passed'],
      rollP: json['rollP'] as String?,
      gpa: json['gpa'],
      gPA: json['GPA'],
      cGPA: json['CGPA'],
      cGPAp: json['CGPAp'],
      failed: json['failed'],
      rollF: json['rollF'] as String?,
      subjects: json['subjects'] as String?,
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
    <String, dynamic>{
      'passed': instance.passed,
      'rollP': instance.rollP,
      'gpa': instance.gpa,
      'GPA': instance.gPA,
      'CGPA': instance.cGPA,
      'CGPAp': instance.cGPAp,
      'failed': instance.failed,
      'rollF': instance.rollF,
      'subjects': instance.subjects,
    };
