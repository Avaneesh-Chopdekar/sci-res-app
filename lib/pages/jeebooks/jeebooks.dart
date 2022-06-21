import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  List<Widget> pages = [PhyJeeBooks(), ChemJeeBooks(), MathsJeeBooks()];
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: Text(
                currentIndex == 0
                    ? 'Physics JEE Books'
                    : currentIndex == 1
                        ? 'Chemistry JEE Books'
                        : 'Maths JEE Books',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w500))),
        bottomNavigationBar: NavigationBar(
            onDestinationSelected: ((index) => setState(() {
                  currentIndex = index;
                  controller.animateToPage(index,
                      curve: Curves.easeOut,
                      duration: const Duration(milliseconds: 300));
                })),
            selectedIndex: currentIndex,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.bolt), label: 'Physics'),
              NavigationDestination(
                  icon: Icon(Icons.science_outlined), label: 'Chemistry'),
              NavigationDestination(
                  icon: Icon(Icons.functions), label: 'Maths'),
            ]),
        body: PageView(
            children: pages,
            controller: controller,
            onPageChanged: (page_index) =>
                setState(() => currentIndex = page_index)),
      );
}
