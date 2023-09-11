


import 'package:bd_result/src/constants/colors.dart';
import 'package:bd_result/src/controller/bteb_single_result_controller.dart';
import 'package:bd_result/src/model/bteb_single_result_model.dart';
import 'package:bd_result/src/model/bteb_user_data_model.dart';
import 'package:bd_result/src/utils/widgets/download_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BtebSingleResultView extends StatelessWidget {
  final UserInputdataModel btebUserdataModel;
  const BtebSingleResultView({
    super.key,
    required this.btebUserdataModel,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder:(context,ref,child) {
        final result=ref.watch(btebsingleresultProvider(btebUserdataModel));
        return result.when(
          loading: () => const Center(child: CircularProgressIndicator(color: Appcolor.primaryColor,)),
          error: (error, stackTrace) {
            return Center(
              child: Text(error.toString().split(":")[1],style: const TextStyle(color: Appcolor.red),),
            );
          
          },
          data:(BtebSingleResultModel signledata) {
            return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: (){
                  },
                  child: const DownloadButton())
                    ),
              ),
              const SizedBox(
            height: 20,
              ),
            Text("Roll :  ${signledata.roll}",style: const TextStyle(color: Appcolor.white,fontSize: 14)),
            const SizedBox(height: 20,),
          Text(signledata.technology.toString().toLowerCase(),style: const TextStyle(color: Appcolor.white,fontSize: 14)),
          const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("semester : ${signledata.semester}",style: const TextStyle(color: Appcolor.white,fontSize: 14)),
                const SizedBox(width: 20,),
                Text("Date : ${signledata.date}",style: const TextStyle(color: Appcolor.white,fontSize: 14)),
              ],
            ),
            const SizedBox(height: 20,),
            signledata.results!.passed!=null?const Text("Passed",style: TextStyle(color:Appcolor.primaryColor,fontWeight: FontWeight.bold,fontSize: 18)):
            Text("${signledata.results!.subjects!.length} Subjects Referred",style: const TextStyle(color:Appcolor.red,fontWeight: FontWeight.bold,fontSize: 18)),
            const SizedBox(height: 15,),
            signledata.results!.passed!=null?Text(signledata.results!.gpa,style: const TextStyle(color: Appcolor.white,fontWeight: FontWeight.bold,fontSize: 17)):
            ListView.builder(
              itemCount: signledata.results!.subjects!.length,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context,index){
                return Center(child: Text(signledata.results!.subjects![index].toString().trimLeft().trimRight(),style: const TextStyle(color: Appcolor.red,fontWeight: FontWeight.bold,fontSize: 15)));
            }),
          ],
              );
          },
        );
      },
    );
  }
}