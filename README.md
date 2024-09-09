# quote_app_daily_task

A new Flutter project.

# Flutter ListView and GridView Components

## ListView

The `ListView` widget in Flutter is a scrollable list of widgets. It allows you to create a vertically scrolling list of items, which can be infinite or finite, depending on your use case.

### Features

- **Scrolling**: Provides vertical scrolling by default.
- **Infinite Lists**: Supports lazy loading with `ListView.builder`.
- **Customizable**: Supports various types of children and layouts.

### Installation

No additional installation is required for `ListView` as it's part of Flutter's core library.

### Basic Usage

Here’s a basic example of using `ListView`:

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
        appBar: AppBar(
          title: Text('ListView Example'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
```
### ListView Types
ListView: 
A basic list view.
ListView.builder: Lazily builds items as they scroll into view.
ListView.separated: Provides separators between items.
ListView.custom: Allows for custom item layouts and behaviors.
### Examples
### ListView.builder Example
```dart
Copy code
ListView.builder(
  itemCount: 100,
  itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.star),
      title: Text('Item #$index'),
    );
  },
);
```
## GridView
The GridView widget in Flutter creates a scrollable grid of widgets. It allows you to display items in a 2D array-like format.

## Features
Scrolling: Provides both vertical and horizontal scrolling.
Customizable Grid: Supports varying numbers of columns and rows.
Lazy Loading: Similar to ListView.builder, supports lazy loading with GridView.builder.
Installation
No additional installation is required for GridView as it's part of Flutter's core library.

## Basic Usage
Here’s a basic example of using GridView:

```dart
Copy code
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView Example'),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: <Widget>[
            Card(child: Center(child: Text('Item 1'))),
            Card(child: Center(child: Text('Item 2'))),
            Card(child: Center(child: Text('Item 3'))),
            Card(child: Center(child: Text('Item 4'))),
          ],
        ),
      ),
    );
  }
}
```
## GridView Types
GridView: A basic grid view.
GridView.builder: Lazily builds grid items.
GridView.count: Provides a grid with a fixed number of tiles in the cross axis.
GridView.extent: Provides a grid with tiles that have a maximum cross axis extent.
## Examples
```dart
Copy code
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
  ),
  itemCount: 30,
  itemBuilder: (context, index) {
    return Card(
      child: Center(
        child: Text('Item #$index'),
      ),
    );
  },
);
```
## Troubleshooting
ListView/GridView does not scroll: Ensure that the parent widget does not constrain the size. Use Expanded or Flexible if necessary.
Items not visible: Check that the itemCount is correctly set and that the itemBuilder is correctly implemented.

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
# Flutter Snackbar Component

The `Snackbar` component in Flutter provides brief feedback about an operation through a message that appears at the bottom of the screen. It is often used for showing temporary notifications or alerts to users.

## Features

- **Auto Dismissal**: Automatically disappears after a specified duration.
- **Custom Actions**: Includes optional action buttons.
- **Customizable Styles**: Allows for customization of appearance and behavior.
- **Integration**: Easily integrates with Flutter's `Scaffold` for showing messages.

## Installation

To use the Snackbar component, add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  your_package_name: ^1.0.0
```

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
        appBar: AppBar(
          title: Text('Snackbar Example'),
        ),
        body: Center(
          child: SnackbarExample(),
        ),
      ),
    );
  }
}

class SnackbarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('This is a Snackbar message'),
            duration: Duration(seconds: 3), // Duration in seconds
          ),
        );
      },
      child: Text('Show Snackbar'),
    );
  }
}
```
## Props (Snackbar Parameters)
The SnackBar widget in Flutter accepts the following parameters:

### content (Widget):
The primary content of the Snackbar, typically a Text widget.
### action (SnackBarAction): 
An optional action button that appears alongside the message.
### duration (Duration): 
The amount of time the Snackbar will be visible before automatically dismissing.
### backgroundColor (Color): 
The background color of the Snackbar.
### behavior (SnackBarBehavior):
Determines how the Snackbar should be displayed (e.g., fixed or floating).
## Examples
### Snackbar with Action Button
```dart
Copy code
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text('Item deleted'),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {
        // Handle the action
      },
    ),
    duration: Duration(seconds: 5),
  ),
);
Custom Styles
dart
Copy code
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text('Custom styled Snackbar'),
    duration: Duration(seconds: 4),
    backgroundColor: Colors.teal,
    behavior: SnackBarBehavior.floating,
  ),
);
```
## Accessibility
The Snackbar component supports accessibility by default. Make sure your content widget (typically Text) has appropriate semantic labels.

## Troubleshooting
### Snackbar does not appear: 
Ensure you are using ScaffoldMessenger.of(context).showSnackBar() and that the context is correctly passed.
Snackbar not dismissing automatically: Verify that the duration parameter is correctly set.

<h1>DialogBox & Snackbar</h1>
<p>


  <img src="https://github.com/user-attachments/assets/b897591b-a77a-4521-a18b-c905a86c1530" width="22%" Height="35%">
  <img src="https://github.com/user-attachments/assets/78311928-71d7-4272-aa1c-1d4895dbe8df" width="22%" Height="35%">
   <img src="https://github.com/user-attachments/assets/557d5cae-c086-43c4-b7da-ea146b3f422c" width="22%" Height="35%">
  <img src="https://github.com/user-attachments/assets/8980187e-975a-47f8-ba0b-dd20a46f5d5f" width="22%" Height="35%">
  </p>

https://github.com/user-attachments/assets/05d1bef2-b0e7-4a68-b575-adb0dbda8985

