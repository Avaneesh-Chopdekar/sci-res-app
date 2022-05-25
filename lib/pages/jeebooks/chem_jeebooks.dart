import 'package:flutter/material.dart';
import '../../components/list_item.dart';

class ChemJeeBooks extends StatefulWidget {
  const ChemJeeBooks({Key? key}) : super(key: key);

  @override
  State<ChemJeeBooks> createState() => _ChemJeeBooksState();
}

class _ChemJeeBooksState extends State<ChemJeeBooks> {
  final List bookNames = [
    'Arihant Chemistry',
    'Errorless Chemistry',
    'M.S.Chouhan JEE',
  ];
  final List urls = [
    'https://drive.google.com/file/d/1Rno6HV-Wlva2s2KRvSijx7WuOabLawgV/view', // Arihant
    'https://drive.google.com/file/d/111zT7mROCu9YSfnWeo1iTZOIe2vTr8W6/view', // Errorless
    'https://1drv.ms/b/s!AmuzjkvH34D_fLN2ME_ypuHQK1g', // M.S.Chouhan JEE
  ];
  final bools = [false, false, true];
  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: bookNames.length,
      itemBuilder: (context, index) => ListItem(
          name: bookNames[index],
          index: index,
          url: urls[index],
          isOneDrive: bools[index]));
}
