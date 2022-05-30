import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';
// import 'package:shared_preferences/shared_preferences.dart';
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
  bool isDarkMode = false;
  late FixedExtentScrollController controller;
  // late SharedPreferences preferences;
  void initState() {
    super.initState();
    // init();
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

  // Future init() async {
  //   preferences = await SharedPreferences.getInstance();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Science Resources'),
          centerTitle: true,
          // actions: [
          //   IconButton(
          //       icon: Icon(isDarkMode
          //           ? Icons.light_mode_outlined
          //           : Icons.dark_mode_outlined),
          //       onPressed: () async {
          //         preferences.setBool('isDarkMode', false);
          //         bool? isDarkMode = preferences.getBool('isDarkMode');
          //         if (isDarkMode == null) return;
          //         setState(() {
          //           isDarkMode = !isDarkMode;
          //           this.isDarkMode = isDarkMode;
          //         });
          //       })
          // ],
          leading: IconButton(
              tooltip: 'More Info',
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const MoreInfo()))),
              icon: const Icon(
                Icons.info_outline,
              ))),
      body: Center(
        child: ClickableListWheelScrollView(
          itemHeight: 250,
          scrollController: controller,
          onItemTapCallback: (index) {
            if (index == 0)
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => StateBoard())));
            if (index == 1)
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => JeeBooks())));
            if (index == 2)
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => PYQs())));
          },
          itemCount: 3,
          child: ListWheelScrollView(
            controller: controller,
            physics: FixedExtentScrollPhysics(),
            itemExtent: 250,
            children: const [
              BigCard(
                text: 'State',
                page: StateBoard(),
                bgImage: 'assets/stateboard.webp',
              ),
              BigCard(
                text: 'JEE',
                page: JeeBooks(),
                bgImage: 'assets/books.webp',
              ),
              BigCard(
                text: 'PYQs',
                page: PYQs(),
                bgImage: 'assets/pyqs.webp',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
