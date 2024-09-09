# quote_app_daily_task

A new Flutter project.
<h1>GridView & ListView</h1>
<p>
 

  <img src="https://github.com/user-attachments/assets/a99fcc83-4f1a-405e-b721-3f73381c3c4c" width="22%" Height="35%">
  <img src="https://github.com/user-attachments/assets/9ba5a443-120b-4704-874e-f532e56bf720" width="22%" Height="35%">
  </p>



https://github.com/user-attachments/assets/b9b06c4b-596b-47b5-9bbc-a9b72e094b9a

# Flutter UI Components and Dart Utilities

This repository contains examples and explanations of various Flutter UI components and Dart utilities. Each section includes a brief definition and a corresponding code example.

## 1. Dialog Box

**Definition:**  
A dialog box is a small window that appears on top of the main content to prompt the user for input or provide important information. It usually includes options to confirm or cancel an action.

**Code Example:**

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Dialog Box Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Dialog Title'),
                    content: Text('This is a dialog box content.'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Close'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Show Dialog'),
          ),
        ),
      ),
    );
  }
}
```

<h1>DialogBox & Snackbar</h1>
<p>


  <img src="https://github.com/user-attachments/assets/b897591b-a77a-4521-a18b-c905a86c1530" width="22%" Height="35%">
  <img src="https://github.com/user-attachments/assets/78311928-71d7-4272-aa1c-1d4895dbe8df" width="22%" Height="35%">
   <img src="https://github.com/user-attachments/assets/557d5cae-c086-43c4-b7da-ea146b3f422c" width="22%" Height="35%">
  <img src="https://github.com/user-attachments/assets/8980187e-975a-47f8-ba0b-dd20a46f5d5f" width="22%" Height="35%">
  </p>

https://github.com/user-attachments/assets/05d1bef2-b0e7-4a68-b575-adb0dbda8985

