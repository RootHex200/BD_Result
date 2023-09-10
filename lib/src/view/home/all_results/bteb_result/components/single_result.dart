import 'package:bd_result/src/constants/values.dart';
import 'package:bd_result/src/model/bteb_user_data_model.dart';
import 'package:bd_result/src/utils/widgets/button_widget.dart';
import 'package:bd_result/src/utils/widgets/custom_drop_down.dart';
import 'package:bd_result/src/utils/widgets/custom_textfield.dart';
import 'package:bd_result/src/view/view_result_page/view_result_page.dart';
import 'package:flutter/material.dart';

class SingleResult extends StatefulWidget {
  const SingleResult({super.key});

  @override
  State<SingleResult> createState() => _SingleResultState();
}

class _SingleResultState extends State<SingleResult> {
  late TextEditingController _rollcontroller;
  String selectedTechValue = btebTechnology[0];
  @override
  void initState() {
    _rollcontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _rollcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 70,
            child: Customdropdown(
                selectedValue: selectedTechValue,
                onChanged: (value) {
                  selectedTechValue = value.toString();
                },
                items: btebTechnology,
                hintText: "Select Technology"),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: CustomTextField(
                  hintText: "Roll Number", controller: _rollcontroller)),
          const SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                try {
                  if (_rollcontroller.text.isNotEmpty) {
                    BtebUserdataModel btebUserdataModel = BtebUserdataModel(
                        technologyname: selectedTechValue,
                        roll: int.parse(_rollcontroller.text),
                        resultType: btebResultType[0]);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ViewResultPage(
                              btebUserdataModel: btebUserdataModel,
                            )));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Please Enter Roll Number"),
                      duration: Duration(milliseconds: 500),
                    ));
                  }
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Enter Roll in number"),
                    duration: Duration(milliseconds: 500),
                  ));
                }
              },
              child: Buttonwidget(
                text: "Result",
                color: Colors.green,
                width: MediaQuery.of(context).size.width * 0.9,
              )),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
