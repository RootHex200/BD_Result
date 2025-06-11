

import 'package:bd_result/src/core/network/base_api.dart';
import 'package:bd_result/src/core/typedefs/typedefs.dart';
import 'package:bd_result/src/feature/bteb_result/data/model/bteb_group_result_response_model.dart';

class GetBtebGroupResultApi extends BaseApi{
  GetBtebGroupResultApi(super.endPoint);

  @override
  parseResponse(JSON jsonResponse) {
    return BtebGroupResultModel.fromJson(jsonResponse);
  }

}