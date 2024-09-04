import 'package:flutter/material.dart';

import '../../utils/global.dart';

class GridViewMethod extends StatefulWidget {
  const GridViewMethod({super.key});

  @override
  State<GridViewMethod> createState() => _GridViewMethodState();
}

class _GridViewMethodState extends State<GridViewMethod> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      physics: BouncingScrollPhysics(),
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
                fontStyle: FontStyle.italic,
                color: (index % 2 == 0) ? Colors.white : Colors.black,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
