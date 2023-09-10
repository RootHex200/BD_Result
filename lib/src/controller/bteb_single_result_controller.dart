


import 'package:bd_result/src/model/bteb_single_result_model.dart';
import 'package:bd_result/src/model/bteb_user_data_model.dart';
import 'package:bd_result/src/service/bteb_result_api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final btebsingleresultProvider = FutureProvider.autoDispose.family<BtebSingleResultModel,BtebUserdataModel>((ref,userdata) async {
  final result=await BtebResultService().getBtebSingleResult(userdata);
  return result[0];
});