import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  const BigCard(
      {Key? key, required this.text, required this.page, required this.bgImage})
      : super(key: key);

  final String text;
  final String bgImage;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(bgImage), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(12)),
        height: MediaQuery.of(context).orientation == Orientation.portrait
            ? 200
            : MediaQuery.of(context).size.height - 30,
        width: MediaQuery.of(context).orientation == Orientation.portrait
            ? MediaQuery.of(context).size.width - 80
            : 300,
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => page)));
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
