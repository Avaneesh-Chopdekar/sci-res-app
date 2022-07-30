import 'package:flutter/material.dart';
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
            title: Text(currentIndex == 0
                ? '11th Stateboard Books'
                : '12th Stateboard Books')),
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
                      ? Icons.sentiment_satisfied_outlined
                      : Icons.sentiment_satisfied,
                ),
                label: '11th',
              ),
              NavigationDestination(
                icon: Icon(
                  currentIndex == 1
                      ? Icons.sentiment_dissatisfied_outlined
                      : Icons.sentiment_dissatisfied,
                ),
                label: '12th',
              ),
            ]),
        body: PageView(
          onPageChanged: (pageIndex) =>
              setState(() => currentIndex = pageIndex),
          controller: controller,
          children: pages,
        ),
      );
}
