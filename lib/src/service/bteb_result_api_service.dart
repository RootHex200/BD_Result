



import 'package:bd_result/src/model/bteb_group_result_model.dart';
import 'package:bd_result/src/model/bteb_single_result_model.dart';
import 'package:bd_result/src/model/bteb_user_data_model.dart';
import 'package:dio/dio.dart';

class BtebResultService{

  Future<List<BtebSingleResultModel>> getBtebSingleResult(UserInputdataModel btebUserdataModel) async {

    final response = await Dio().get("https://btebresultsbd.com/api/result",
    queryParameters: {
      "rollNumber":btebUserdataModel.btebroll,
      "technology":btebUserdataModel.technologyname.toString().toLowerCase(),
    }
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      return [BtebSingleResultModel.fromJson(response.data[0])];
    } else {
      throw Exception('Result Not Found');
    }
  }

    Future<BtebGroupResultModel> getBtebGroupResult(UserInputdataModel btebUserdataModel) async {
      //https://btebresultsbd.com/api/group?startRoll=581701&endRoll=null&semester=4th&technology=diploma%20in%20engineering
    
    final response = await Dio().get("https://btebresultsbd.com/api/group",
    queryParameters: {
      "startRoll":btebUserdataModel.startroll,
      "endRoll":btebUserdataModel.endroll,
      "semester":btebUserdataModel.semester.toString().toLowerCase().split(" ")[0],
      "technology":btebUserdataModel.technologyname.toString().toLowerCase(),
    }
    );
    // print(response.data);
    if (response.statusCode == 200) {
      return BtebGroupResultModel.fromJson(response.data);
    } else if(response.statusCode==400){
      throw Exception('Result Not Found');
    }
     else {
      throw Exception('Result Not Found');
    }
  }
}