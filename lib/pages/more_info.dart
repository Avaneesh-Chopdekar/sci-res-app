import 'package:flutter/material.dart';

class MoreInfo extends StatelessWidget {
  const MoreInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List text = [
      'You need internet connection to use this app.',
      'H.C.Verma is banned in Google Drive that\'s why I used Microsoft One Drive.',
      'It is recommended for you to have Microsoft One Drive App installed for better experience.',
      'Content of this app belongs to their respective owners.',
      'Copyright Disclaimer under Section 107 of the copyright act 1976, allowance is made for fair use for purposes such as criticism, comment, news reporting, scholarship, and research. Fair use is a use permitted by copyright statute that might otherwise be infringing. Non-profit, educational or personal use tips the balance in favour of fair use.',
      'Computer Science Books\' Pdfs are unavailable.',
      'This app is made by Avaneesh Chopdekar.',
    ];
    return Scaffold(
      appBar: AppBar(title: Text('More Info')),
      body: Padding(
        padding: const EdgeInsets.all(4),
        child: ListView.builder(
            itemCount: text.length,
            itemBuilder: ((context, index) => ListTile(
                  title: Text(
                    text[index],
                    style: TextStyle(fontSize: 16),
                  ),
                ))),
      ),
    );
  }
}
