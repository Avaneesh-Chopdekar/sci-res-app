import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'eleven_state.dart';
import 'twelve_state.dart';

class StateBoard extends StatefulWidget {
  const StateBoard({Key? key}) : super(key: key);

  @override
  State<StateBoard> createState() => _StateBoardState();
}

class _StateBoardState extends State<StateBoard> {
  int currentIndex = 0;
  PageController controller = PageController();
  List<Widget> pages = [const EleventhState(), const TwelfthState()];

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
                    ? '11th Stateboard Books'
                    : '12th Stateboard Books',
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
              NavigationDestination(
                  icon: Icon(Icons.child_care), label: '11th'),
              NavigationDestination(icon: Icon(Icons.elderly), label: '12th'),
            ]),
        body: PageView(
          children: pages,
          onPageChanged: (page_index) =>
              setState(() => currentIndex = page_index),
          controller: controller,
        ),
      );
}
