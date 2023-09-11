
import 'package:bd_result/src/model/bteb_group_result_model.dart';
import 'package:bd_result/src/model/bteb_user_data_model.dart';
import 'package:bd_result/src/service/bteb_result_api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final btebgroupresultProvider = FutureProvider.autoDispose.family<BtebGroupResultModel,UserInputdataModel>((ref,userdata) async {
  final result=await BtebResultService().getBtebGroupResult(userdata);
  return result;
});