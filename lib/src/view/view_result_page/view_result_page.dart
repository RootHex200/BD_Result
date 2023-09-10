import 'package:bd_result/src/constants/colors.dart';
import 'package:bd_result/src/constants/values.dart';
import 'package:bd_result/src/model/bteb_user_data_model.dart';
import 'package:bd_result/src/view/view_result_page/view_all_result/bteb_group_result_view.dart';
import 'package:bd_result/src/view/view_result_page/view_all_result/bteb_single_result_view.dart';
import 'package:flutter/material.dart';

class ViewResultPage extends StatelessWidget {
  final BtebUserdataModel btebUserdataModel;
  const ViewResultPage({super.key, required this.btebUserdataModel});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Appcolor.secondaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.cloud_download_outlined,
                          size: 30,
                          color: Appcolor.primaryColor,
                        ))),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Appcolor.secondaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: showResultView(btebUserdataModel.resultType.toString()),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget showResultView(String value) {
    if (btebResultType[0] == value) {
      return BtebSingleResultView(btebUserdataModel: btebUserdataModel,);
    }
    if(btebResultType[1]==value){
      return BtebGroupResultView(btebUserdataModel: btebUserdataModel,);
    }
    return Container();
  }
}
