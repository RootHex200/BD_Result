import 'package:bd_result/src/constants/colors.dart';
import 'package:bd_result/src/constants/values.dart';
import 'package:bd_result/src/model/bteb_user_data_model.dart';
import 'package:bd_result/src/feature/bteb_result/presentation/view/components/bteb_group_result_view.dart';
import 'package:bd_result/src/feature/bteb_result/presentation/view/components/bteb_single_result_view.dart';
import 'package:bd_result/src/view/view_result_page/view_all_result/intermediate_secondary_result_view.dart';
import 'package:flutter/material.dart';

class ViewResultPage extends StatelessWidget {
  final UserInputdataModel userdataModel;
  const ViewResultPage({super.key, required this.userdataModel});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Result",
              style: TextStyle(
                  color: Appcolor.white, fontWeight: FontWeight.bold)),
        ),
        body: SingleChildScrollView(
          child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Appcolor.secondaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: showResultView(userdataModel.resultType.toString()),
              ),
        ),
      ),
    );
  }

  Widget showResultView(String value) {
    if (btebResultType[0] == value) {
      return BtebSingleResultView(btebUserdataModel: userdataModel,);
    }
    if(btebResultType[1]==value){
      return BtebGroupResultView(btebUserdataModel: userdataModel,);
    }
    if(value=="intersecond"){
      return  IntermediateSecondaryResultView(intermediateSecondaryUserdataModel: userdataModel,);
    }
    return Container();
  }
}
