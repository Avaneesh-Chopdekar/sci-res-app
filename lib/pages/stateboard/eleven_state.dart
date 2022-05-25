import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/list_item.dart';

class EleventhState extends StatefulWidget {
  const EleventhState({Key? key}) : super(key: key);

  @override
  State<EleventhState> createState() => _EleventhStateState();
}

class _EleventhStateState extends State<EleventhState> {
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
    'https://drive.google.com/file/d/1OxGjnWsbnOnYJj8JVoKJ8Tcd0CxJ2gLc/view', // English
    'https://drive.google.com/file/d/1xIPg_P-d34HfKopxvIZpakPmY27t3oDl/view', // Physics
    'https://drive.google.com/file/d/1e3lZafbWlX2ExhknApxe-rcia2b1GM7w/view', // Chemistry
    'https://drive.google.com/file/d/1q_KVYffIlB0lHtWLr_C3FXfQKYFxrVQu/view', // Maths 1
    'https://drive.google.com/file/d/1WBXKI72VhnK_UqFe3B2jaiT5laNASDZI/view', // Maths 2
    'https://drive.google.com/file/d/1HabfYNKdLijL7UBy7IfowXeJgFSfrMZG/view', // Biology
    'https://drive.google.com/file/d/10nM37xNgpyHOgO2knvm6yYB-zUHNrDDc/view', // IT
  ];
  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: bookNames.length,
      itemBuilder: (context, index) => ListItem(
            name: '11th ' + bookNames[index],
            index: index,
            url: urls[index],
          ));
}
