import 'package:flutter/material.dart';
import 'maths_jeebooks.dart';
import 'phy_jeebooks.dart';
import 'chem_jeebooks.dart';

class JeeBooks extends StatefulWidget {
  const JeeBooks({Key? key}) : super(key: key);

  @override
  State<JeeBooks> createState() => _JeeBooksState();
}

class _JeeBooksState extends State<JeeBooks> {
  int currentIndex = 0;
  PageController controller = PageController();
  List<Widget> pages = [
    const PhyJeeBooks(),
    const ChemJeeBooks(),
    const MathsJeeBooks()
  ];
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: Text(currentIndex == 0
                ? 'Physics JEE Books'
                : currentIndex == 1
                    ? 'Chemistry JEE Books'
                    : 'Maths JEE Books')),
        bottomNavigationBar: NavigationBar(
            onDestinationSelected: ((index) => setState(() {
                  currentIndex = index;
                  controller.animateToPage(index,
                      curve: Curves.easeOut,
                      duration: const Duration(milliseconds: 300));
                })),
            selectedIndex: currentIndex,
            destinations: [
              NavigationDestination(
                icon: Icon(
                  currentIndex == 0
                      ? Icons.perm_data_setting
                      : Icons.perm_data_setting_outlined,
                ),
                label: 'Physics',
              ),
              NavigationDestination(
                icon: Icon(
                  currentIndex == 1 ? Icons.science : Icons.science_outlined,
                ),
                label: 'Chemistry',
              ),
              NavigationDestination(
                icon: Icon(
                  currentIndex == 2
                      ? Icons.calculate
                      : Icons.calculate_outlined,
                ),
                label: 'Maths',
              ),
            ]),
        body: PageView(
          controller: controller,
          onPageChanged: (pageIndex) =>
              setState(() => currentIndex = pageIndex),
          children: pages,
        ),
      );
}
