


import 'package:bd_result/src/feature/bteb_result/data/model/bteb_single_result_model_response.dart';
import 'package:bd_result/src/feature/bteb_result/domain/entity/result_entity.dart';

class BtebSingleResultEntity {
  final String? sId;
  final String? technology;
  final ResultsEntity? results;
  final String? semester;
  final dynamic regulation;
  final String? date;
  final String? roll;
  final dynamic institute;
  BtebSingleResultEntity({
    this.sId,
    this.technology,
    this.results,
    this.semester,
    this.regulation,
    this.date,
    this.roll,
    this.institute,
  });

  factory BtebSingleResultEntity.fromModel(BtebSingleResultModel model) {
    return BtebSingleResultEntity(
      sId: model.sId,
      technology: model.technology,
      results: model.results==null?null:ResultsEntity.fromModel(model.results!),
      semester: model.semester,
      regulation: model.regulation,
      date: model.date,
      roll: model.roll,
      institute: model.institute,
    );
  }
}