
import 'package:bd_result/src/constants/colors.dart';
import 'package:bd_result/src/constants/values.dart';
import 'package:bd_result/src/model/bteb_user_data_model.dart';
import 'package:bd_result/src/utils/widgets/button_widget.dart';
import 'package:bd_result/src/utils/widgets/custom_drop_down.dart';
import 'package:bd_result/src/utils/widgets/custom_textfield.dart';
import 'package:bd_result/src/view/view_result_page/view_result_page.dart';
import 'package:flutter/material.dart';

class Intermediatesecondaryresult extends StatefulWidget {
  const Intermediatesecondaryresult({super.key});

  @override
  State<Intermediatesecondaryresult> createState() => _IntermediatesecondaryresultState();
}

class _IntermediatesecondaryresultState extends State<Intermediatesecondaryresult> {
  late TextEditingController _rollcontroller;
  late TextEditingController _regcontroller;
  String selectedExamValue=interSecondExamName[0];
  String selectedBoardValue=interSecondBoardName[0];
  String selectedYearValue=getYears()[3];

  @override
  void initState() {
    _rollcontroller=TextEditingController();
    _regcontroller=TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _rollcontroller.dispose();
    _regcontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
      padding: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: Appcolor.secondaryColor,
          borderRadius: BorderRadius.circular(20)),
      child:  Column(
        children: [
                    const Text(
            "Intermediate and Secondary Board",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            height: 70,
            child: Customdropdown(
                selectedValue: selectedExamValue,
                onChanged: (value) {
                  selectedExamValue = value.toString();
                },
                items: interSecondExamName,
                hintText: "Select Exam"),
          ),
          const SizedBox(height: 15,),
                    SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            height: 70,
            child: Customdropdown(
                selectedValue: selectedBoardValue,
                onChanged: (value) {
                  selectedBoardValue = value.toString();
                },
                items: interSecondBoardName,
                hintText: "Select Board"),
          ),
          const SizedBox(height: 15,),
                    SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            height: 70,
            child: Customdropdown(
                selectedValue: selectedYearValue,
                onChanged: (value) {
                  selectedYearValue = value.toString();
                },
                items: getYears(),
                hintText: "Select Exam"),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: CustomTextField(
                  hintText: "Roll Number", controller: _rollcontroller)),
                  const SizedBox(height: 15,),
                            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: CustomTextField(
                  hintText: "Registration Number", controller: _regcontroller)),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: ()async{
              // final reuslt=await IntermediateSecondaryApi().getInertSecondaryResul(UserInputdataModel());
              // log("api",error: reuslt);
              if(_regcontroller.text.isNotEmpty&&_rollcontroller.text.isNotEmpty){
                UserInputdataModel userInputdataModel=UserInputdataModel(
                  resultType: "intersecond",
                  examname: selectedExamValue,
                  boardname: selectedBoardValue,
                  year: selectedYearValue,
                  insecroll: _rollcontroller.text,
                  reg: _regcontroller.text
                );
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewResultPage(userdataModel: userInputdataModel)));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please fill all the fields")));
              }
            },
            child: Buttonwidget(
                  text: "Result",
                  color: Colors.green,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
          )
        ],
      ),
      
    );
  }
}