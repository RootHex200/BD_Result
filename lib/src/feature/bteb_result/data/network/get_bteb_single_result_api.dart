

import 'package:bd_result/src/core/network/base_api.dart';
import 'package:bd_result/src/core/typedefs/typedefs.dart';
import 'package:bd_result/src/feature/bteb_result/data/model/bteb_single_result_model_response.dart';

class GetBtebSingleResultApi extends BaseApi {
  GetBtebSingleResultApi(super.endPoint);

  @override
  BtebSingleResultModel parseResponse(JSON jsonResponse) {
    return BtebSingleResultModel.fromJson(jsonResponse);
  }
}