import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 22,),
      children: const <TextSpan>[
        TextSpan(text: 'Quiz', style: TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: 'Hub', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange)),
      ],
    ),
  );
}
