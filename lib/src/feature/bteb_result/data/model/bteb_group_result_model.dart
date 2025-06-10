

import 'package:bd_result/src/feature/bteb_result/data/model/bteb_single_result_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bteb_group_result_model.freezed.dart';
part 'bteb_group_result_model.g.dart';

@freezed
class BtebGroupResultModel with _$BtebGroupResultModel {
  const factory BtebGroupResultModel({
    List<Result>? result,
    int? total,
  }) = _BtebGroupResultModel;

  factory BtebGroupResultModel.fromJson(Map<String, dynamic> json) =>
      _$BtebGroupResultModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @JsonKey(name: '_id') String? sId,
    String? technology,
    Results? results,
    String? semester,
    dynamic regulation,
    @JsonKey(name: 'Date') String? date,
    String? roll,
    dynamic institute,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) =>
      _$ResultFromJson(json);
}
