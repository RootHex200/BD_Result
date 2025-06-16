import 'dart:typed_data';
import 'package:bd_result/src/features/intermediate_secondary_result/data/datasources/Intermediate_secondary_result_api_service.dart';
import 'package:bd_result/src/features/intermediate_secondary_result/data/models/bteb_user_data_model.dart';
import 'package:bd_result/src/features/intermediate_secondary_result/data/repositories/intermediate_secondary_result_repository_impl.dart';
import 'package:bd_result/src/features/intermediate_secondary_result/domain/repositories/intermediate_secondary_result_repository.dart';
import 'package:bd_result/src/features/intermediate_secondary_result/domain/usecases/get_intermediate_secondary_result_usecase.dart';
import 'package:bd_result/src/core/services/html_to_pdf.dart'; // Still needs proper DI
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider for the API Datasource
final intermediateSecondaryApiProvider = Provider<IntermediateSecondaryApi>((ref) {
  return IntermediateSecondaryApi();
});

// Provider for the PDF Service (assuming it has no constructor dependencies for now)
final pdfServiceProvider = Provider<PDFserviceHtmlToPdf>((ref) {
  return PDFserviceHtmlToPdf();
});

// Provider for the Repository Implementation
final intermediateSecondaryResultRepositoryProvider = Provider<IntermediateSecondaryResultRepository>((ref) {
  final apiDatasource = ref.watch(intermediateSecondaryApiProvider);
  final pdfService = ref.watch(pdfServiceProvider);
  return IntermediateSecondaryResultRepositoryImpl(dataSource: apiDatasource, pdfService: pdfService);
});

// Provider for the Usecase
final getIntermediateSecondaryResultUsecaseProvider = Provider<GetIntermediateSecondaryResultUsecase>((ref) {
  final repository = ref.watch(intermediateSecondaryResultRepositoryProvider);
  return GetIntermediateSecondaryResultUsecase(repository);
});

// The main FutureProvider, now using the Usecase
final interSecondaryresultProvider = FutureProvider.autoDispose.family<ByteData, UserInputdataModel>((ref, userdata) async {
  final usecase = ref.watch(getIntermediateSecondaryResultUsecaseProvider);
  return usecase(userdata);
});
