

import 'package:bd_result/src/constants/values.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final radiobuttonProvider = StateProvider.family<String,String>((ref,value) {
  if(value == "bteb") return btebResultType[0];
  return resultNames[0];
});