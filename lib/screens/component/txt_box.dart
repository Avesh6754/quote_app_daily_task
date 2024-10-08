import 'package:flutter/material.dart';
TextField textfiledmethod({required String name,required bool isIcons}) {
  return TextField(
    decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: '$name',
      hintText: 'Input',
      hintStyle: TextStyle(color: Colors.grey),
      suffixIcon: (isIcons)?Icon(Icons.arrow_drop_down_outlined):null,
    ),
  );
}