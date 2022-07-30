import 'package:flutter/material.dart';
import '../pyqs/chem_pyqs.dart';
import '../pyqs/maths_pyqs.dart';
import '../pyqs/phy_pyqs.dart';

class PYQs extends StatefulWidget {
  const PYQs({Key? key}) : super(key: key);

  @override
  State<PYQs> createState() => _PYQsState();
}

class _PYQsState extends State<PYQs> {
  List<Widget> pages = [const PhyPyqs(), const ChemPyqs(), const MathsPyqs()];
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
          title: Text(currentIndex == 0
              ? 'Physics JEE PYQs'
              : currentIndex == 1
                  ? 'Chemistry JEE PYQs'
                  : 'Maths JEE PYQs')),
      bottomNavigationBar: NavigationBar(
          onDestinationSelected: ((index) {
            setState(() => currentIndex = index);
            controller.animateToPage(index,
                curve: Curves.easeOut,
                duration: const Duration(milliseconds: 300));
          }),
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
                currentIndex == 2 ? Icons.calculate : Icons.calculate_outlined,
              ),
              label: 'Maths',
            ),
          ]),
      body: PageView(
        onPageChanged: (pageIndex) => setState(() => currentIndex = pageIndex),
        controller: controller,
        children: pages,
      ));
}
