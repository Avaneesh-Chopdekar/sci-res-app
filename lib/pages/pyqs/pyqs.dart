import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pyqs/chem_pyqs.dart';
import '../pyqs/maths_pyqs.dart';
import '../pyqs/phy_pyqs.dart';

class PYQs extends StatefulWidget {
  const PYQs({Key? key}) : super(key: key);

  @override
  State<PYQs> createState() => _PYQsState();
}

class _PYQsState extends State<PYQs> {
  List<Widget> pages = [PhyPyqs(), ChemPyqs(), MathsPyqs()];
  int currentIndex = 0;
  PageController controller = PageController();

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
                  ? 'Physics JEE PYQs'
                  : currentIndex == 1
                      ? 'Chemistry JEE PYQs'
                      : 'Maths JEE PYQs',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w500))),
      bottomNavigationBar: NavigationBar(
          onDestinationSelected: ((index) {
            setState(() => currentIndex = index);
            controller.animateToPage(index,
                curve: Curves.easeOut,
                duration: const Duration(milliseconds: 300));
          }),
          selectedIndex: currentIndex,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.bolt), label: 'Physics'),
            NavigationDestination(
                icon: Icon(Icons.science_outlined), label: 'Chemistry'),
            NavigationDestination(icon: Icon(Icons.functions), label: 'Maths'),
          ]),
      body: PageView(
          children: pages,
          onPageChanged: (page_index) =>
              setState(() => currentIndex = page_index),
          controller: controller));
}
