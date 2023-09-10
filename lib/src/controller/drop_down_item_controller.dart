

import 'package:bd_result/src/constants/values.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dropDownselectedValueProvider = StateProvider.autoDispose.family<String,String>((ref,value) {

  return btebTechnology[0];
});