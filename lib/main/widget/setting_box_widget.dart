import 'package:flutter/material.dart';

class SettingBoxButton extends StatelessWidget {
  SettingBoxButton({
    required this.child,
    required this.height,
    required this.width,
    this.padd,
    this.color,
  });
  final Widget ?child;
  final Color? color;
  final double? padd;
  final double? width;
  final double? height;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.all(padd ?? 8.0),
                child: Container(
                  height: height,
                  width: width,
                  color: color ?? Colors.grey,
                  child: child,
                ),
              );
  }

  
}