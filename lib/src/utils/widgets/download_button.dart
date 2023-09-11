import 'package:bd_result/src/constants/colors.dart';
import 'package:flutter/material.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Appcolor.white,
            borderRadius: BorderRadius.circular(10)),
        child: const Icon(
          Icons.cloud_download_outlined,
          size: 30,
          color: Appcolor.primaryColor,
        ));
  }
}
