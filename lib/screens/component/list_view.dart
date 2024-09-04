import 'package:flutter/material.dart';

import '../../utils/global.dart';

class ListViewMethod extends StatefulWidget {
  const ListViewMethod({super.key});

  @override
  State<ListViewMethod> createState() => _ListViewMethodState();
}

class _ListViewMethodState extends State<ListViewMethod> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Card(
        color: (index % 2 == 0) ? Colors.red.shade300 : Colors.red.shade100,
        child: ListTile(
          title: Text(
            quote_list[index].quote,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: (index % 2 == 0) ? Colors.white : Colors.black),
          ),
          subtitle: Text(
            "-- ${quote_list[index].author}",
            style: TextStyle(
                fontSize: 13,
                color: (index % 2 == 0) ? Colors.white : Colors.black,
                fontWeight: FontWeight.w400,fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}
