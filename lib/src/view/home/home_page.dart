
import 'package:bd_result/src/constants/colors.dart';
import 'package:bd_result/src/constants/values.dart';
import 'package:bd_result/src/controller/radio_button_controller.dart';
import 'package:bd_result/src/view/home/all_results/Intermediate_secondary_result/Intermediate_secondary_result_page.dart';
import 'package:bd_result/src/view/home/all_results/bteb_result/bteb_result_page.dart';
import 'package:bd_result/src/view/notification/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Appcolor.secondaryColor,
          title: const Text('BD Result',style: TextStyle(color: Appcolor.white,fontWeight: FontWeight.bold),),
          centerTitle: true,
          actions:  [
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const NotificationPage()));
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.notifications,color: Appcolor.white,size: 30,)),
            )
          ],
        ),
        body:   SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: resultNames.length,
                  primary: false,
                  itemBuilder: (context,index){
                    return Consumer(
                  builder:(context,ref,child) {
                    final radiovalue = ref.watch(radiobuttonProvider("result"));
                    return RadioListTile(
                      fillColor: MaterialStateProperty.all(Appcolor.primaryColor),
                    title:  Text(resultNames[index].toString(),style: const TextStyle(color: Appcolor.white,fontSize: 12),),
                    value: resultNames[index], groupValue: radiovalue, onChanged: (value){
                      ref.read(radiobuttonProvider("result").notifier).state = value.toString();
                    });
                  },             
                );
                  }
                  ),
                //body 
                Consumer(builder: (context,ref,child){
                  final radiovalue = ref.watch(radiobuttonProvider("result"));
                  return checkResultpage(radiovalue.toString());
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget checkResultpage(String value){
    if(value==resultNames[0]){
      return const BtebResultPage();
    }
    if(value==resultNames[1]){
      return const Intermediatesecondaryresult();
    }
    return Container();
  }
}