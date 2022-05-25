import 'package:flutter/material.dart';
import '../../components/list_item.dart';

class MathsJeeBooks extends StatefulWidget {
  const MathsJeeBooks({Key? key}) : super(key: key);

  @override
  State<MathsJeeBooks> createState() => _MathsJeeBooksState();
}

class _MathsJeeBooksState extends State<MathsJeeBooks> {
  List bookNames = [
    'Differential Calculus',
    'Integral Calculus',
    'Play With Graphs',
    'Trigonometry',
    'Vectors and 3D Geometry',
    'Algebra',
    'Coordinate Geometry',
  ];
  List urls = [
    'https://drive.google.com/file/d/1NyI18mJVHKaVi-G0Tx7AmY1ggf6ZgJcB/view', // Differential Calculus
    'https://drive.google.com/file/d/1O6WEChxpyhJ8RQvQqDaMpFKrlCZr860-/view', // Integral Calculus
    'https://drive.google.com/file/d/1O-OfMC_XnyOF0h_0Gz01bjG9tAv-Khkd/view', // Play with Graphs
    'https://drive.google.com/file/d/1O-F6W_bXoD18YQMEhxvPC5tI5wnEWGB8/view', // Trignometry
    'https://drive.google.com/file/d/1O7LfxGXgLGIHV-_sJaJUuNLKHKHd6Ur9/view', // Vector and 3D Geometry
    'https://drive.google.com/file/d/1NXlSpTrdegXNvxpWWOWT49PSw8LhtAps/view', // Algebra
    'https://drive.google.com/file/d/1NUhJkBGYP6R2W73GZm9lx8b8IljHYX33/view', // Coordinate Geometry
  ];
  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: bookNames.length,
      itemBuilder: (context, index) =>
          ListItem(name: bookNames[index], url: urls[index], index: index));
}
