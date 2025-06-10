

import 'package:bd_result/src/feature/bteb_result/data/model/bteb_single_result_model.dart';

class ResultsEntity {
  final dynamic passed;
  final String? rollP;
  final dynamic gpa;
  final dynamic gPA;
  final dynamic cGPA;
  final dynamic cGPAp;
  final dynamic failed;
  final String? rollF;
  final String? subjects;
  ResultsEntity({
    this.passed,
    this.rollP,
    this.gpa,
    this.gPA,
    this.cGPA,
    this.cGPAp,
    this.failed,
    this.rollF,
    this.subjects,
  });
  factory ResultsEntity.fromModel(Results model) {
    return ResultsEntity(
      passed: model.passed,
      rollP: model.rollP,
      gpa: model.gpa,
      gPA: model.gPA,
      cGPA: model.cGPA,
      cGPAp: model.cGPAp,
      failed: model.failed,
      rollF: model.rollF,
      subjects: model.subjects,
    );
  }
}