import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.name,
    required this.url,
    this.isOneDrive = false,
    required this.index,
  }) : super(key: key);

  final String name;
  final int index;
  final String url;
  final bool isOneDrive;

  @override
  Widget build(BuildContext context) {
    final _lightColors = [
      Colors.amber.shade100,
      Colors.lightGreen.shade100,
      Colors.lightBlue.shade100,
      Colors.orange.shade100,
      Colors.pink.shade50,
      Colors.tealAccent.shade100
    ];
    final color = _lightColors[index % _lightColors.length];
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Material(
        color: color,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: BorderRadius.circular(14),
        child: InkWell(
          splashColor: Colors.white38,
          onTap: () async {
            if (!await launchUrl(
              Uri.parse(url),
              mode: LaunchMode.externalApplication,
            )) {
              throw 'Could not launch ${Uri.parse(url)}';
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                        'assets/${!isOneDrive ? 'gdrive' : 'onedrive'}.png')),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const Icon(Icons.chevron_right, color: Colors.black87),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
