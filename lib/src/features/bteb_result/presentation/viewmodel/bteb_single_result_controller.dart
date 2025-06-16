
import 'package:bd_result/src/features/bteb_result/data/model/bteb_single_result_model.dart';
import 'package:bd_result/src/features/intermediate_secondary_result/data/models/bteb_user_data_model.dart';
import 'package:bd_result/src/features/bteb_result/data/datasources/bteb_result_api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final btebsingleresultProvider = FutureProvider.autoDispose.family<BtebSingleResultModel,UserInputdataModel>((ref,userdata) async {
  final result=await BtebResultService().getBtebSingleResult(userdata);
  return result[0];
});