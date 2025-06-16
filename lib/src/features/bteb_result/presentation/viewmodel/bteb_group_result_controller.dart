import 'package:bd_result/src/features/bteb_result/data/model/bteb_group_result_model.dart';
import 'package:bd_result/src/features/intermediate_secondary_result/data/models/bteb_user_data_model.dart';
import 'package:bd_result/src/features/bteb_result/data/datasources/bteb_result_api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final btebgroupresultProvider = FutureProvider.autoDispose.family<BtebGroupResultModel,UserInputdataModel>((ref,userdata) async {
  final result=await BtebResultService().getBtebGroupResult(userdata);
  return result;
});