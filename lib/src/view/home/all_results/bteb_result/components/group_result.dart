import 'package:bd_result/src/constants/values.dart';
import 'package:bd_result/src/model/bteb_user_data_model.dart';
import 'package:bd_result/src/utils/widgets/button_widget.dart';
import 'package:bd_result/src/utils/widgets/custom_drop_down.dart';
import 'package:bd_result/src/utils/widgets/custom_textfield.dart';
import 'package:bd_result/src/view/view_result_page/view_result_page.dart';
import 'package:flutter/material.dart';

class GroupResult extends StatefulWidget {
  const GroupResult({super.key});

  @override
  State<GroupResult> createState() => _GroupResultState();
}

class _GroupResultState extends State<GroupResult> {
  late TextEditingController _startrollcontroller;
  late TextEditingController _endrollcontroller;
  String selectedTechValue = btebTechnology[0];
  String selectedSemesterValue = btebsemester[0];
  @override
  void initState() {
    _startrollcontroller = TextEditingController();
    _endrollcontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _startrollcontroller.dispose();
    _endrollcontroller.dispose();
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
            height: 70,
            child: Customdropdown(
                selectedValue: selectedSemesterValue,
                onChanged: (value) {
                  selectedSemesterValue = value.toString();
                },
                items: btebsemester,
                hintText: "Select Technology"),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: CustomTextField(
                      hintText: "Start Roll",
                      controller: _startrollcontroller)),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: CustomTextField(
                      hintText: "End Roll", controller: _endrollcontroller)),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                                try {
                  if (_endrollcontroller.text.isNotEmpty&&_startrollcontroller.text.isNotEmpty) {
                    BtebUserdataModel btebUserdataModel = BtebUserdataModel(
                        technologyname: selectedTechValue,
                        semester: selectedSemesterValue,
                        endroll: int.parse(_endrollcontroller.text),
                        startroll: int.parse(_startrollcontroller.text),
                        resultType: btebResultType[1]);
                    
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
