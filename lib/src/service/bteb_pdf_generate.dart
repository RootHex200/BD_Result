

import 'dart:io';

import 'package:bd_result/src/model/bteb_group_result_model.dart';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:permission_handler/permission_handler.dart';

class BtebPdfService{

  Future<dynamic> downloadbtebresult(BtebGroupResultModel groupResultModel)async{
   Map<Permission, PermissionStatus> statuses = await [
    Permission.storage,
  ].request();
  if(statuses[Permission.storage]!.isGranted){
    var result=await btebGroupResultpdf(groupResultModel);
    return result;
  }else{
    return "Permission Denied";
  }
  }

  Future<String> btebGroupResultpdf(BtebGroupResultModel groupresult) async {
    final headers = [
      'S.N',
      'Roll',
      'CGPA',
    ];
    var productdata=[
      ["","",""]
    ];
    for(int i=0;i<groupresult.result!.length;i++){
      if(i==0){
        if(groupresult.result![i].results!.passed!=null){
        productdata[0]=[(i+1).toString(),groupresult.result![i].roll.toString(),groupresult.result![i].results!.gpa.toString()];
      }else{
        productdata[0]=[(i+1).toString(),groupresult.result![i].roll.toString(),"${groupresult.result![i].results!.subjects!.length} Subjects Referred \n ${groupresult.result![i].results!.subjects}"];
      }
      }else{
      if(groupresult.result![i].results!.passed!=null){
        productdata.add([(i+1).toString(),groupresult.result![i].roll.toString(),groupresult.result![i].results!.gpa.toString()]);
      }else{
        productdata.add([(i+1).toString(),groupresult.result![i].roll.toString(),"${groupresult.result![i].results!.subjects!.length} Subjects Referred \n ${groupresult.result![i].results!.subjects}"]);
      }
      }

    }
    var myTheme = ThemeData.withFont(
      base: Font.ttf(await rootBundle.load("assets/fonts/OpenSans-Bold.ttf")),
      bold: Font.ttf(await rootBundle.load("assets/fonts/OpenSans-Bold.ttf")),
      italic:
          Font.ttf(await rootBundle.load("assets/fonts/OpenSans-Italic.ttf")),
    );
    final pdf = Document(theme: myTheme);

    try{
    pdf.addPage(MultiPage(
      maxPages: 50,
      build: (context) {
      
      return [
      Center(child: Text(groupresult.result![0].technology.toString().toUpperCase(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
      SizedBox(height: 20,),
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Table.fromTextArray(
      headers: headers,
      data: productdata,
      border: null,
      headerStyle: TextStyle(fontWeight: FontWeight.bold),
      headerDecoration: const BoxDecoration(color: PdfColors.grey300),
      cellHeight: 30,
      cellAlignments: {
        0: Alignment.centerLeft,
        1: Alignment.center,
        2: Alignment.centerRight,
      },
    ),
      ],
    )
      ];
    }));

    final bytes = await pdf.save();
    Directory dir = Directory('/storage/emulated/0/Download');
    final filepath = File("${dir.path}/groupresult${DateTime.now().millisecondsSinceEpoch.toString()}.pdf");

    await filepath.writeAsBytes(bytes);
    await OpenFile.open(filepath.path);
    return "Download successfully ${filepath.path}";
    }catch (e){
      return "Download Faild";
    }
  }
}