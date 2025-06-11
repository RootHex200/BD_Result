

import 'package:bd_result/src/feature/bteb_result/domain/entity/bteb_group_result_entity.dart';
import 'package:bd_result/src/feature/bteb_result/domain/entity/bteb_single_result_entity.dart';

abstract class BtebResultRepository {

  Future<BtebSingleResultEntity> getBtebSingleResult({required String rollNumber,required String technology});
  Future<BtebGroupResultEntity> getBtebGroupResult({required String startRoll,required String endRoll,required String semester,required String technology});
}