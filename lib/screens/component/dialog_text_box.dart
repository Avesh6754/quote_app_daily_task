import 'package:flutter/material.dart';


Row row_email_box({required String name,required String img}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      CircleAvatar(
        backgroundImage: NetworkImage(
            img),
      ),
      SizedBox(width: 20,),
      Text(name, style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.black54),)

    ],
  );
}