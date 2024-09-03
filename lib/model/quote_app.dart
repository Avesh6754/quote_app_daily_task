import 'package:flutter/material.dart';

class Quote {
  late String quote, author;
  late Color findcolor;
  Quote(this.author, this.quote,);

  factory Quote.fromMap(Map m1) {
    return Quote(m1['author'], m1['quote']);
  }

}
