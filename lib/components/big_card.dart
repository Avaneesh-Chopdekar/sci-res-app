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
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).orientation == Orientation.portrait
            ? 20
            : 80,
        vertical:
            MediaQuery.of(context).orientation == Orientation.portrait ? 10 : 4,
      ),
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
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 50),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
