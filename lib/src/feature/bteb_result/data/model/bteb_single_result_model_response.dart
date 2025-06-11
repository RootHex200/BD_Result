

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bteb_single_result_model_response.freezed.dart';
part 'bteb_single_result_model_response.g.dart';

@freezed
class BtebSingleResultModel with _$BtebSingleResultModel {
  const factory BtebSingleResultModel({
    @JsonKey(name: '_id') String? sId,
    String? technology,
    Results? results,
    String? semester,
    dynamic regulation,
    @JsonKey(name: 'Date') String? date,
    String? roll,
    dynamic institute,
  }) = _BtebSingleResultModel;

  factory BtebSingleResultModel.fromJson(Map<String, dynamic> json) =>
      _$BtebSingleResultModelFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    dynamic passed,
    String? rollP,
    dynamic gpa,
    @JsonKey(name: 'GPA') final dynamic gPA,
    @JsonKey(name: 'CGPA') final dynamic cGPA,
    @JsonKey(name: 'CGPAp') final dynamic cGPAp,
    final dynamic failed,
    final String? rollF,
    @JsonKey(name: "subjects")
    final String? subjects,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}

