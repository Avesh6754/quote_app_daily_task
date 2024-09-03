import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/model/quote_app.dart';
import 'package:quote_app_daily_task/model/quote_list.dart';
import 'package:quote_app_daily_task/screens/component/grid_view.dart';
import 'package:quote_app_daily_task/screens/component/list_view.dart';
import 'package:quote_app_daily_task/utils/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    quote_list = quoteList
        .map(
          (e) => Quote.fromMap(e),
        )
        .toList();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    isGrid = !isGrid;
                  });
                },
                icon: Icon(
                  (isGrid) ? Icons.grid_view : Icons.list,
                  color: Colors.white,
                  size: (isGrid) ? 25 : 30,
                ))
          ],
          title: Text(
            "Home Page ",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: (isGrid) ? GridViewMethod() : ListViewMethod());
  }
}
