import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/model/quote_app.dart';
import 'package:quote_app_daily_task/model/quote_list.dart';
import 'package:quote_app_daily_task/screens/component/alert_Dialog.dart';
import 'package:quote_app_daily_task/screens/component/grid_view.dart';
import 'package:quote_app_daily_task/screens/component/list_view.dart';
import 'package:quote_app_daily_task/utils/global.dart';

import 'component/dialod_box.dart';
import 'component/txt_box.dart';

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
        title: const Text(
          "Home Page ",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: (isGrid) ? GridViewMethod() : ListViewMethod(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => alert_Dialog_box(context));
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => dialod_box(context),
                );
              },
              child: Icon(Icons.upload_file)),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => Material(
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(Icons.cancel_outlined)),
                              const Text(
                                'Full-screen dialog title',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              TextButton(onPressed: () {}, child: const Text('Save'))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                textfiledmethod(name:'Label' ,isIcons: true),
                                SizedBox(height: 20,),
                                textfiledmethod(name:'Event name' ,isIcons: false),
                              ],
                            ),
                          ),
                          Row(

                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Icon(Icons.remove)),
        ],
      ),
    );
  }


}
