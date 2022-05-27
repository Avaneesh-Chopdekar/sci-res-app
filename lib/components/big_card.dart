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
      child: Material(
        borderRadius: BorderRadius.circular(12),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          splashColor: Colors.black38,
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => page)));
          },
          child: Ink.image(
            fit: BoxFit.cover,
            image: AssetImage(bgImage),
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? 150
                : MediaQuery.of(context).size.height - 30,
            width: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.width - 80
                : 180,
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
      ),
    );
  }
}
