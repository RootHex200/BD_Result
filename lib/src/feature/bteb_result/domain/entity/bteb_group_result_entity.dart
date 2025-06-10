

import 'package:bd_result/src/feature/bteb_result/data/model/bteb_group_result_model.dart';
import 'package:bd_result/src/feature/bteb_result/domain/entity/result_entity.dart';

class BtebGroupResultEntity {

  final String? sId;
  final String? technology;
  final ResultsEntity? results;
  final String? semester;
  final dynamic regulation;
  final String? date;
  final String? roll;
  final dynamic institute;
  BtebGroupResultEntity({
    this.sId,
    this.technology,
    this.results,
    this.semester,
    this.regulation,
    this.date,
    this.roll,
    this.institute,
  });
  factory BtebGroupResultEntity.fromModel(Result model) {
    return BtebGroupResultEntity(
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