import 'package:flutter/material.dart';
import '../../components/list_item.dart';

class ChemJeeBooks extends StatefulWidget {
  const ChemJeeBooks({Key? key}) : super(key: key);

  @override
  State<ChemJeeBooks> createState() => _ChemJeeBooksState();
}

class _ChemJeeBooksState extends State<ChemJeeBooks> {
  final List bookNames = [
    'MTG Fingertips',
    'Arihant Chemistry',
    'Errorless Chemistry',
    'M.S.Chouhan JEE',
    'Himanshu Pandey',
    'V.K.Jaiswal 1',
    'V.K.Jaiswal 2',
  ];
  final List urls = [
    'https://1drv.ms/b/s!AmuzjkvH34D_e6KOg8yGtu_UCnM?e=otHUxc', // MTG Fingertips
    'https://drive.google.com/file/d/1Rno6HV-Wlva2s2KRvSijx7WuOabLawgV/view', // Arihant
    'https://drive.google.com/file/d/111zT7mROCu9YSfnWeo1iTZOIe2vTr8W6/view', // Errorless
    'https://drive.google.com/file/d/1s-8BQRBpKP5VoySdUHCx2LhdPU-0ui9l/view?usp=drivesdk', // M.S.Chouhan JEE
    'https://drive.google.com/file/d/1NL5GYJeTPEvqSJ_hUVkIpd1f_w1qr7dS/view', // Himanshu Pandey
    'https://drive.google.com/file/d/1fciOkvocr3cgIzmRWLzlF3bBz6ts6rOX/view', // V K Jaiswal 1
    'https://drive.google.com/file/d/1LtPwWqEXrH5B5Lguis9zqZ6U-9omKWY2/view', // V K Jaiswal 2
  ];
  final bools = [true, false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: bookNames.length,
      itemBuilder: (context, index) => ListItem(
          name: bookNames[index],
          index: index,
          url: urls[index],
          isOneDrive: bools[index]));
}
