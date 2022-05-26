import 'package:flutter/material.dart';
import '../components/big_card.dart';
import 'stateboard/stateboard.dart';
import 'jeebooks/jeebooks.dart';

class Books extends StatefulWidget {
  const Books({Key? key}) : super(key: key);

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    const children = const [
      BigCard(
        text: 'State',
        page: StateBoard(),
        bgImage: 'assets/stateboard.webp',
      ),
      BigCard(
        text: 'JEE',
        page: JeeBooks(),
        bgImage: 'assets/jeebooks.jpg',
      )
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Books')),
      body: Center(
        child: MediaQuery.of(context).orientation == Orientation.portrait
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center, children: children)
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: children),
      ),
    );
  }
}
