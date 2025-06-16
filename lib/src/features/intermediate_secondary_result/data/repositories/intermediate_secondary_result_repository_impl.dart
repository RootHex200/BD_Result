import 'dart:typed_data';
import 'package:bd_result/src/features/intermediate_secondary_result/data/datasources/Intermediate_secondary_result_api_service.dart';
import 'package:bd_result/src/features/intermediate_secondary_result/data/models/bteb_user_data_model.dart';
import 'package:bd_result/src/features/intermediate_secondary_result/domain/repositories/intermediate_secondary_result_repository.dart';
import 'package:bd_result/src/core/services/html_to_pdf.dart'; // This service needs to be moved or injected properly later

class IntermediateSecondaryResultRepositoryImpl implements IntermediateSecondaryResultRepository {
  final IntermediateSecondaryApi dataSource;
  final PDFserviceHtmlToPdf pdfService; //  Inject PDF service

  IntermediateSecondaryResultRepositoryImpl({required this.dataSource, required this.pdfService});

  @override
  Future<ByteData> getIntermediateSecondaryResult(UserInputdataModel userData) async {
    final htmlContent = await dataSource.getInertSecondaryResul(userData);
    // The original controller did this:
    // final filepath = await PDFserviceHtmlToPdf().htmlToPdf(htmlcontent);
    // return filepath;
    // So, the repository will now encapsulate this.
    // It's important to handle potential errors from htmlContent if it's not a string (e.g. if it's an Exception)
    if (htmlContent is String) {
      return pdfService.htmlToPdf(htmlContent);
    } else if (htmlContent is Exception) {
      // Propagate the exception or handle it as per application's error handling strategy
      throw htmlContent;
    } else {
      // Fallback or error for unexpected type
      throw Exception('Unexpected content type from data source');
    }
  }
}
