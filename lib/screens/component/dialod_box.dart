import 'package:flutter/material.dart';

import 'dialog_text_box.dart';


AlertDialog dialod_box(BuildContext context) {
  return AlertDialog(
    icon: const Icon(
      Icons.refresh,
      color: Colors.grey,
    ),
    title: const Text(
      'Reset settings?',
      style:
      TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'This will reset your app preferences back to their default settings. The following accounts will also be signed out',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black54),
        ),
        const Divider(
          thickness: 1,

        ),
        row_email_box(img: 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',name:'leevillanuevanotes@gmail.com' ),
        const SizedBox(height: 10,),
        row_email_box(img: 'https://th.bing.com/th/id/OIG.69nPvzou81d8KVDyZl__?pid=ImgDetMain',name:'alloalejandro@gmail.com' ),
        const SizedBox(height: 10,),
        row_email_box(img: 'https://preview.redd.it/new-profile-pictures-for-yall-v0-brdjms2xte3c1.jpg?width=640&crop=smart&auto=webp&s=a785e9ec16789276c74b19398f4f41b471f672f8',name:'oliortega@gmail.com' ),
        const Divider(
          thickness: 1,
        ),

      ],

    ),
    actions: [
      TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: const Text('Reset Setting Accept'),
              duration: Duration(seconds: 2),
              action: SnackBarAction(
                label: 'Done',
                onPressed: () {},
              ),
            ));
          },
          child: const Text('Accept')),
      TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: const Text('Reset Setting Cancel'),
              duration: Duration(seconds: 2),
              action: SnackBarAction(
                label: 'Done',
                onPressed: () {},
              ),
            ));
          },
          child: const Text('Cancel'))
    ],
  );
}


