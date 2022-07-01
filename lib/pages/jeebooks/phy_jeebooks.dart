import 'package:flutter/material.dart';
import '../../components/list_item.dart';

class PhyJeeBooks extends StatefulWidget {
  const PhyJeeBooks({Key? key}) : super(key: key);

  @override
  State<PhyJeeBooks> createState() => _PhyJeeBooksState();
}

class _PhyJeeBooksState extends State<PhyJeeBooks> {
  final List<String> bookNames = <String>[
    'HC Verma Part 1',
    'HC Verma Part 2',
    'DC Pandey Part 1',
    'DC Pandey Part 2',
    'DC Pandey Part 3',
    'DC Pandey Part 4',
    'DC Pandey Part 5',
    'I.E.Irodov',
  ];
  final List urls = [
    'https://1drv.ms/b/s!AmuzjkvH34D_a4teYsdw7KK-TnM?e=jb3QJ3', // HC Verma 1
    'https://1drv.ms/b/s!AmuzjkvH34D_as9NSyDqpqcQuaY?e=gDaA2e', // HC Verma 2
    'https://drive.google.com/file/d/1Z3_cxC4ahhNV4_wpVrJgKcJLnL6I3Ml6/view', // DC Pandey 1
    'https://drive.google.com/file/d/1wvb2BEwAmSxCLktxDHivY4T4PgcL8unC/view', // DC Pandey 2
    'https://drive.google.com/file/d/1yYeNbZ_XWDcv_3dkrP9Z3CAFCW13KCAE/view', // DC Pandey 3
    'https://drive.google.com/file/d/1_Bni1_V-TJgpHmLyblcKBUClJHgJx4Bb/view', // DC Pandey 4
    'https://drive.google.com/file/d/1I4r8ykLCrQGagn4Vg78E0YttJfFTTl8Y/view', // DC Pandey 5
    'https://drive.google.com/file/d/1g8srZWCaO3ECrUxaWJSE8StTvY7quum3/view', // I.E.Irodov
  ];
  final List<bool> subtitle = <bool>[
    true,
    true,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: bookNames.length,
      itemBuilder: (context, index) => ListItem(
            name: bookNames[index],
            url: urls[index],
            isOneDrive: subtitle[index],
            index: index,
          ));
}
