import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  final List<String> strings;
  final IconData? bullet;
  final double? padding;

  BulletList(
    {
    required this.strings,
    this.bullet,
    this.padding,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(16, 15, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: strings.map((str) {
          return Padding(
            padding: EdgeInsets.all(padding??8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(bullet ?? null),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      str,
                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.6),
                        height: 1.55,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}