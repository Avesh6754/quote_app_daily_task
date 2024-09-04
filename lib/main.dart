
import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/screens/home_screen.dart';
void main()
{
  runApp(My_Quote_App());

}
class My_Quote_App extends StatelessWidget {
  const My_Quote_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>HomeScreen(),
      },
    );
  }
}
