import 'package:bd_result/src/constants/colors.dart';
import 'package:bd_result/src/constants/values.dart';
import 'package:bd_result/src/controller/radio_button_controller.dart';
import 'package:bd_result/src/view/home/all_results/bteb_result/components/group_result.dart';
import 'package:bd_result/src/view/home/all_results/bteb_result/components/single_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BtebResultPage extends StatelessWidget {
  const BtebResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
      padding: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: Appcolor.secondaryColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          const Text(
            "Bangladesh Technical Education Board",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: btebResultType.length,
              primary: false,
              itemBuilder: (context, index) {
                return Consumer(
                  builder: (context, ref, child) {
                    final radiovalue = ref.watch(radiobuttonProvider("bteb"));
                    return RadioListTile(
                        fillColor:
                            MaterialStateProperty.all(Appcolor.primaryColor),
                        title: Text(
                          btebResultType[index].toString(),
                          style: const TextStyle(
                              color: Appcolor.white, fontSize: 12),
                        ),
                        value: btebResultType[index],
                        groupValue: radiovalue,
                        onChanged: (value) {
                          ref.read(radiobuttonProvider("bteb").notifier).state =
                              value.toString();
                        });
                  },
                );
              }),
        

        Consumer(
          builder: (context,ref,child){
            final radiovalue = ref.watch(radiobuttonProvider("bteb"));
            return checkResulType(radiovalue);

        }),
        
        ],
      ),
    );
  }

  Widget checkResulType(String value){
    if(value==btebResultType[0]){
      return const SingleResult();
    }
    if(value==btebResultType[1]){
      return const GroupResult();
    }
    return Container();
  }
}
