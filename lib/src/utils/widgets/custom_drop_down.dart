import 'package:bd_result/src/constants/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Customdropdown extends StatelessWidget {
  const Customdropdown({
    super.key,
    required this.selectedValue,
    required this.onChanged,
    required this.items,
    required this.hintText,
  });

  final String? selectedValue;
  final List? items;
  final String? hintText;
  final Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      dropdownColor: Appcolor.primaryColor,
      iconSize: 0,
      value: selectedValue,
      onChanged: onChanged,
      decoration: const InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Appcolor.primaryColor),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Appcolor.primaryColor),
        ),
      ),
      items: items?.map((country) {
        return DropdownMenuItem<String>(
          value: country,
          child: Text(country,overflow: TextOverflow.ellipsis,style: const TextStyle(color: Appcolor.white, fontSize: 10),),
        );
      }).toList(),
    );
  }
}