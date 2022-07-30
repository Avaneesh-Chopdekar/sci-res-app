import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';
import 'jeebooks/jeebooks.dart';
import 'stateboard/stateboard.dart';
import 'more_info.dart';
import 'pyqs/pyqs.dart';
import '../components/big_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late FixedExtentScrollController controller;
  int currentIndex = 1;
  @override
  void initState() {
    super.initState();
    const QuickActions().setShortcutItems([
      const ShortcutItem(type: 'jee-books', localizedTitle: 'Jee Books'),
      const ShortcutItem(
          type: 'state-books', localizedTitle: 'Stateboard Books'),
      const ShortcutItem(type: 'pyqs', localizedTitle: 'PYQs')
    ]);
    const QuickActions().initialize(
      (type) {
        if (type == 'jee-books') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const JeeBooks()));
        } else if (type == 'state-books') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const StateBoard()));
        } else if (type == 'pyqs') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const PYQs()));
        }
      },
    );
    controller = FixedExtentScrollController(initialItem: 1);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    onTap() => currentIndex == 1
        ? Navigator.push(
            context, MaterialPageRoute(builder: (context) => const JeeBooks()))
        : currentIndex == 2
            ? Navigator.push(
                context, MaterialPageRoute(builder: (context) => const PYQs()))
            : Navigator.push(context,
                MaterialPageRoute(builder: (context) => const StateBoard()));
    return Scaffold(
      appBar: AppBar(
          title: const Text('Science Resources'),
          centerTitle: true,
          leading: IconButton(
              tooltip: 'More Info',
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const MoreInfo()))),
              icon: const Icon(
                Icons.info_outline,
              ))),
      body: Center(
        child: ListWheelScrollView(
          controller: controller,
          physics: const FixedExtentScrollPhysics(),
          onSelectedItemChanged: (newValue) =>
              setState(() => currentIndex = newValue),
          itemExtent: 250,
          children: const [
            BigCard(
              text: 'Boards',
              bgImage: 'assets/stateboard.webp',
            ),
            BigCard(
              text: 'JEE',
              bgImage: 'assets/books.webp',
            ),
            BigCard(
              text: 'PYQs',
              bgImage: 'assets/pyqs.webp',
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 32),
        child: Row(
          children: [
            FloatingActionButton(
                tooltip: currentIndex == 0
                    ? 'Visit Boards'
                    : currentIndex == 1
                        ? 'Select Boards'
                        : 'Select Jee',
                heroTag: 'left',
                onPressed: () => controller.selectedItem == 0
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StateBoard()))
                    : controller.animateToItem(controller.selectedItem - 1,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut),
                child: const Icon(
                  Icons.chevron_left,
                )),
            const Spacer(),
            FloatingActionButton.extended(
                heroTag: 'Visit Page',
                tooltip: currentIndex == 0
                    ? 'Visit Boards'
                    : currentIndex == 1
                        ? 'Visit Jee'
                        : 'Visit PYQs',
                onPressed: onTap,
                label: Text(
                  currentIndex == 0
                      ? 'Visit Boards'
                      : currentIndex == 1
                          ? 'Visit Jee'
                          : 'Visit PYQs',
                )),
            const Spacer(),
            FloatingActionButton(
                tooltip: currentIndex == 2
                    ? 'Visit PYQs'
                    : currentIndex == 0
                        ? 'Select Jee'
                        : 'Select PYQs',
                heroTag: 'right',
                onPressed: () => controller.selectedItem == 2
                    ? Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const PYQs()))
                    : controller.animateToItem(controller.selectedItem + 1,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut),
                child: const Icon(
                  Icons.chevron_right,
                )),
          ],
        ),
      ),
    );
  }
}
