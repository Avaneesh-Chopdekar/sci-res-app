import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (ColorScheme? lightDynamic, _) {
      ColorScheme lightColorScheme;
      if (lightDynamic != null) {
        lightColorScheme = lightDynamic.harmonized()..copyWith();
      } else {
        lightColorScheme = ColorScheme.fromSeed(seedColor: Color(0xFFDDE1E7));
      }
      return MaterialApp(
        title: 'Sci Res',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.light,
            colorScheme: lightColorScheme,
            appBarTheme: const AppBarTheme(
              surfaceTintColor: Colors.white,
              titleTextStyle: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 21,
              ),
            )),
        home: const MyHomePage(),
      );
    });
  }
}
