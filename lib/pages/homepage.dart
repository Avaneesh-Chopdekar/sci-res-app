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
  void initState() {
    super.initState();
    QuickActions().setShortcutItems([
      ShortcutItem(type: 'jee-books', localizedTitle: 'Jee Books'),
      ShortcutItem(type: 'state-books', localizedTitle: 'Stateboard Books'),
      ShortcutItem(type: 'pyqs', localizedTitle: 'PYQs')
    ]);
    QuickActions().initialize(
      (type) {
        if (type == 'jee-books') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => JeeBooks()));
        } else if (type == 'state-books') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => StateBoard()));
        } else if (type == 'pyqs') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PYQs()));
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
            context, MaterialPageRoute(builder: (context) => JeeBooks()))
        : currentIndex == 2
            ? Navigator.push(
                context, MaterialPageRoute(builder: (context) => PYQs()))
            : Navigator.push(
                context, MaterialPageRoute(builder: (context) => StateBoard()));
    return Scaffold(
      appBar: AppBar(
          title: Text('Science Resources'),
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
          physics: FixedExtentScrollPhysics(),
          onSelectedItemChanged: (newValue) =>
              setState(() => currentIndex = newValue),
          itemExtent: 250,
          children: const [
            BigCard(
              text: 'State',
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
                    ? 'Visit State'
                    : currentIndex == 1
                        ? 'Select State'
                        : 'Select Jee',
                heroTag: 'left',
                splashColor: Colors.teal.shade100,
                backgroundColor: Colors.blue.shade50,
                onPressed: () => controller.selectedItem == 0
                    ? Navigator.push(context,
                        MaterialPageRoute(builder: (context) => StateBoard()))
                    : controller.animateToItem(controller.selectedItem - 1,
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOut),
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.blue.shade900,
                )),
            Spacer(),
            FloatingActionButton.extended(
                heroTag: 'Visit Page',
                tooltip: currentIndex == 0
                    ? 'Visit State'
                    : currentIndex == 1
                        ? 'Visit Jee'
                        : 'Visit PYQs',
                splashColor: Colors.teal.shade100,
                backgroundColor: Colors.blue.shade50,
                onPressed: onTap,
                label: Text(
                    currentIndex == 0
                        ? 'Visit State'
                        : currentIndex == 1
                            ? 'Visit Jee'
                            : 'Visit PYQs',
                    style: TextStyle(color: Colors.blue.shade900))),
            Spacer(),
            FloatingActionButton(
                splashColor: Colors.teal.shade100,
                tooltip: currentIndex == 2
                    ? 'Visit PYQs'
                    : currentIndex == 0
                        ? 'Select Jee'
                        : 'Select PYQs',
                heroTag: 'right',
                backgroundColor: Colors.blue.shade50,
                onPressed: () => controller.selectedItem == 2
                    ? Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PYQs()))
                    : controller.animateToItem(controller.selectedItem + 1,
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOut),
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.blue.shade900,
                )),
          ],
        ),
      ),
    );
  }
}
