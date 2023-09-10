

import 'package:bd_result/src/constants/colors.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      appBar: AppBar(
        backgroundColor: Appcolor.secondaryColor,
        title: const Text("Notification"),
      ),
      body: const Column(
        children: [
          Text("Notification Page"),
        ],
      ),
    ));
  }
}