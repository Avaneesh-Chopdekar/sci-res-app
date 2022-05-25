import 'package:flutter/material.dart';
import '../../components/list_item.dart';

class TwelfthState extends StatefulWidget {
  const TwelfthState({Key? key}) : super(key: key);

  @override
  State<TwelfthState> createState() => _TwelfthStateState();
}

class _TwelfthStateState extends State<TwelfthState> {
  final List<String> bookNames = <String>[
    'English Textbook',
    'Physics Textbook',
    'Chemistry Textbook',
    'Maths 1 Textbook',
    'Maths 2 Textbook',
    'Biology Textbook',
    'IT Textbook',
  ];
  final List urls = [
    'https://drive.google.com/file/d/1SuBKDhMsikVopfsbfusk0i2qUPBMmL7L/view', // English
    'https://drive.google.com/file/d/1Za2o763QYvtfgN6TWhgxsdYgFdN8kTjG/view', // Physics
    'https://drive.google.com/file/d/10bQSGHhOZwM54abop57Ob0YadXY2pq7T/view', // Chemistry
    'https://drive.google.com/file/d/1eO9XYNxzlAeE52p54DbbTxr0wyq9dWSt/view', // Maths 1
    'https://drive.google.com/file/d/1QCHP9wGru1F-w6xwl18NJmiLRKyIOq-r/view', // Maths 2
    'https://drive.google.com/file/d/16bmAc_-yYH_c2KOveOwX9CQNH4KNFFg2/view', // Biology
    'https://drive.google.com/file/d/1awQavTJrGpXRa2bIWo0A0AR0DIv_9uyi/view', // IT
  ];
  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: bookNames.length,
      itemBuilder: (context, index) => ListItem(
          name: '12th ' + bookNames[index], index: index, url: urls[index]));
}
