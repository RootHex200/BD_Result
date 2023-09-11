



import 'dart:typed_data';

import 'package:bd_result/src/model/bteb_user_data_model.dart';
import 'package:bd_result/src/service/Intermediate_secondary_result_api_service.dart';
import 'package:bd_result/src/service/html_to_pdf.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final interSecondaryresultProvider = FutureProvider.autoDispose.family<ByteData,UserInputdataModel>((ref,userdata) async {
  final htmlcontent=await IntermediateSecondaryApi().getInertSecondaryResul(userdata);
   final filepath=await PDFserviceHtmlToPdf().htmlToPdf(htmlcontent);
  return filepath;
});