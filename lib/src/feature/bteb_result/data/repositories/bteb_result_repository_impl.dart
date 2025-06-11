

import 'package:bd_result/src/core/network/endpoint.dart';
import 'package:bd_result/src/feature/bteb_result/data/network/get_bteb_single_result_api.dart';
import 'package:bd_result/src/feature/bteb_result/domain/entity/bteb_group_result_entity.dart';
import 'package:bd_result/src/feature/bteb_result/domain/entity/bteb_single_result_entity.dart';
import 'package:bd_result/src/feature/bteb_result/domain/repository/bteb_result_repository.dart';

class BtebResultRepositoryImpl  implements BtebResultRepository {
  @override
  Future<BtebGroupResultEntity> getBtebGroupResult({required String startRoll, required String endRoll, required String semester, required String technology}) {
    // TODO: implement getBtebGroupResult
    throw UnimplementedError();
  }

  @override
  Future<BtebSingleResultEntity> getBtebSingleResult({required String rollNumber, required String technology})async {
    final response=await GetBtebSingleResultApi(Endpoint.getBtebSingleResult(rollNumber: rollNumber, technology: technology)).getRequest(
      isAuthorized: false,
      );
      return BtebSingleResultEntity.fromModel(response!);
  }
  

}