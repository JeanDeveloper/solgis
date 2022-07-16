import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {
  final int index;

  const CardApp({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 20,
      
      color: Colors.red,
    );

  }

}