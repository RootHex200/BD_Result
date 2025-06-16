import 'dart:typed_data';
import 'package:bd_result/src/features/intermediate_secondary_result/data/models/bteb_user_data_model.dart';

abstract class IntermediateSecondaryResultRepository {
  Future<ByteData> getIntermediateSecondaryResult(UserInputdataModel userData);
}
