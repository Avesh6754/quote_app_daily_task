import 'package:flutter/material.dart';

AlertDialog alert_Dialog_box(BuildContext context)
{
  return AlertDialog(
    icon: const Icon(
      Icons.phonelink_ring,
      color: Colors.grey,
    ),
    actions: [
      TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: const Text('Dialog box Save'),
              duration: Duration(seconds: 2),
              action: SnackBarAction(
                label: 'Done',
                onPressed: () {},
              ),
            ));
          },
          child: const Text('Save')),
      TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: const Text('Dialog box Cancel'),
              duration: Duration(seconds: 2),
              action: SnackBarAction(
                label: 'Done',
                onPressed: () {},
              ),
            ));
          },
          child: const Text('Cancel'))
    ],
    title: const Text(
      "Dialog with hero icon",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
    content: const Text(
      'A dialog is a type of model window that apperas in front of app content to provide critical information , or ask for a decisoion',
      style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.black54),
    ),
  );
}