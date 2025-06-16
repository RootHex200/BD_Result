import 'dart:typed_data';
import 'package:bd_result/src/features/intermediate_secondary_result/data/models/bteb_user_data_model.dart';
import 'package:bd_result/src/features/intermediate_secondary_result/domain/repositories/intermediate_secondary_result_repository.dart';

class GetIntermediateSecondaryResultUsecase {
  final IntermediateSecondaryResultRepository repository;

  GetIntermediateSecondaryResultUsecase(this.repository);

  Future<ByteData> call(UserInputdataModel userData) {
    return repository.getIntermediateSecondaryResult(userData);
  }
}
