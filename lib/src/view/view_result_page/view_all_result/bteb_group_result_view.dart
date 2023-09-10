import 'package:bd_result/src/constants/colors.dart';
import 'package:bd_result/src/controller/bteb_group_result_controller.dart';
import 'package:bd_result/src/model/bteb_group_result_model.dart';
import 'package:bd_result/src/model/bteb_user_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BtebGroupResultView extends StatelessWidget {
  final BtebUserdataModel btebUserdataModel;
  const BtebGroupResultView({
    super.key,
    required this.btebUserdataModel,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final result = ref.watch(btebgroupresultProvider(btebUserdataModel));
        return result.when(
          loading: () => const Center(
              child: CircularProgressIndicator(
            color: Appcolor.primaryColor,
          )),
          error: (error, stackTrace) {
            return const Center(
              child: Text(
                "Result Not Found",
                style: TextStyle(color: Appcolor.red),
              ),
            );
          },
          data: (BtebGroupResultModel groupdata) {
            return Column(
              children: [
                Container(
                  color: Appcolor.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 10),
                    child: Row(
                      children: [
                        const Text("S.No",
                            style: TextStyle(
                                color: Appcolor.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                        ),
                        const Text("Roll",
                            style: TextStyle(
                                color: Appcolor.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14)),
                        Expanded(child: Container()),
                        const Text("CGPA",
                            style: TextStyle(
                                color: Appcolor.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: ListView.builder(
                      itemCount: groupdata.result!.length,
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Text(
                                    (index + 1) < 10
                                        ? "${index + 1}  "
                                        : (index + 1).toString(),
                                    style: const TextStyle(
                                        color: Appcolor.white, fontSize: 14)),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                ),
                                Text(groupdata.result![index].roll.toString(),
                                    style: const TextStyle(
                                        color: Appcolor.white, fontSize: 14)),
                                Expanded(child: Container()),
                                groupdata.result![index].results!.passed != null
                                    ? Text(
                                        groupdata.result![index].results!.gpa,
                                        style: const TextStyle(
                                            color: Appcolor.white,
                                            fontSize: 14))
                                    : TextButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  title: Center(
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                            "Roll : ${groupdata.result![index].roll}",
                                                            style: const TextStyle(
                                                                color: Appcolor.white,
                                                                fontSize: 14,fontWeight: FontWeight.bold)),
                                                      const SizedBox(height: 10,),
                                                      Text(
                                                            "${groupdata.result![index].results!.subjects!.length} Subjects Referred",
                                                            style: const TextStyle(
                                                                color: Appcolor.red,
                                                                fontSize: 14,fontWeight: FontWeight.bold))
                                                      ],
                                                    ),
                                                  ),
                                                  content: SizedBox(
                                                    height:groupdata
                                                            .result![index]
                                                            .results!
                                                            .subjects!
                                                            .length<6?150:220,
                                                    child: Column(
                                                      children: List.generate(groupdata
                                                            .result![index]
                                                            .results!
                                                            .subjects!
                                                            .length, (indexvalue) => Center(
                                                              child: Text(
                                                                  groupdata.result![index].results!.subjects![indexvalue].toString().trimLeft().trimRight(),
                                                                  style: const TextStyle(
                                                                      color:
                                                                          Appcolor
                                                                              .red,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          15)))),
                                                    ),
                                                  ),
                                                );
                                              });
                                        },
                                        child: Text(
                                            "${groupdata.result![index].results!.subjects!.length} sub Referred",
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                                color: Appcolor.red,
                                                fontSize: 14))),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Divider(
                              color: Appcolor.white.withOpacity(0.1),
                              thickness: 1,
                            )
                          ],
                        );
                      }),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
