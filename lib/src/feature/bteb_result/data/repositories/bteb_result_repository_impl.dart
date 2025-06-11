

import 'package:bd_result/src/core/network/endpoint.dart';
import 'package:bd_result/src/feature/bteb_result/data/model/bteb_group_result_response_model.dart';
import 'package:bd_result/src/feature/bteb_result/data/network/get_bteb_group_result_api.dart';
import 'package:bd_result/src/feature/bteb_result/data/network/get_bteb_single_result_api.dart';
import 'package:bd_result/src/feature/bteb_result/domain/entity/bteb_group_result_entity.dart';
import 'package:bd_result/src/feature/bteb_result/domain/entity/bteb_single_result_entity.dart';
import 'package:bd_result/src/feature/bteb_result/domain/repository/bteb_result_repository.dart';

class BtebResultRepositoryImpl  implements BtebResultRepository {
  @override
  Future<List<BtebGroupResultEntity>> getBtebGroupResult
  ({required String startRoll, required String endRoll, required String semester, required String technology})async {
    final BtebGroupResultModel response=await GetBtebGroupResultApi(Endpoint.getBtebGroupResult(startRoll: startRoll, endRoll: endRoll, semester: semester, technology: technology))
    .getRequest(isAuthorized: false);
    return response.result!=null?response.result!.map((e)=>BtebGroupResultEntity.fromModel(e)).toList():[];
  }

  @override
  Future<BtebSingleResultEntity> getBtebSingleResult({required String rollNumber, required String technology})async {
    final response=await GetBtebSingleResultApi(Endpoint.getBtebSingleResult(rollNumber: rollNumber, technology: technology)).getRequest(
      isAuthorized: false,
      );
      return BtebSingleResultEntity.fromModel(response!);
  }
  

}