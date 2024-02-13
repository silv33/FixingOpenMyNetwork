import 'package:flutter/material.dart';
import 'package:open_my_network_app/main/widget/setting_box_widget.dart';

class SettingIconBoxButton extends SettingBoxButton {
  @override
  SettingIconBoxButton({
    this.child,
    required this.icon,
    required this.text,
    this.width,
    this.height,
    this.padd,
    this.color,
  }) : super(child: null, height: 0.0, width: 0.0);
  final Widget? child;
  final IconData? icon;
  final Color? color;
  final double? padd;
  final double? width;
  final double? height; 
  final String? text; 
  
  @override
  Widget build(BuildContext context) {
    return /*Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height,
                  width: width,
                  color: color ?? Colors.grey,
                  child: child,
                ),
              );*/
              Padding(
                padding: EdgeInsets.all(padd??8.0),
                child: Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
    color: color??Colors.grey,
  ),
                  height: height??150,
                  width: width??300,
                  child: Column(children: [Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(icon),
                  ), 
                  Text(text??'Enter text', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)]),
                ),
              );
  }

  
}