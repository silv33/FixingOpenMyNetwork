import 'package:flutter/material.dart';

import '../../main/widget/bullet_list_widget.dart';
import '../../main/widget/padded_text.dart';
import '../../main/widget/setting_box_widget.dart';
import '../../main/widget/setting_icon_box_widget.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final aspect=size.height *size.width*0.0001;
    return ListView(
      children: [Column(
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              SizedBox(
                  height: size.height * 0.300,
                  width: size.width,
                  child: Container(
                    child: Image(
                        height: size.height / 3,
                        fit: BoxFit.cover,
                        image: AssetImage('settings/mountain.jpg')),
                  )),
              Positioned(
                bottom: -50.0,
                left: 80,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: aspect,
                      backgroundColor: Colors.white,
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'settings/profile.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15.0, bottom: 30.0),
                      child: SizedBox(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start, children: [
                                        Text('Little Angels',style:TextStyle(color: Colors.white,fontSize: aspect* 0.5,fontWeight: FontWeight.bold)), 
                                        Text('Hattiban, Lalitpur', style:TextStyle(color: Colors.white,fontSize: aspect* 0.45,fontWeight: FontWeight.bold))],),
                                      ),
                    ),
                  ],
                ),
              ),
                // SizedBox(
                // child: Column(
                //   crossAxisAlignment: CrossAxisAlignment.start, children: [
                //   Text('Little Angels School',style:TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)), 
                //   Text('Hattiban, Lalitpur', style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))],),
                // ),
            ], 
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0, bottom: 20.0, left: 10.0),
            child: Row(
              children: [
                SettingBoxButton(
                height: size.height * 0.250,
                width: size.width * 0.500,
                child: ListView(
                  children:[
                  PaddedText(padd: 10.0, text: 'Details',
                  style: TextStyle(fontWeight: FontWeight.bold),),
                    BulletList(strings: [
                  'Username: Abishek Khanal',
                  'Email: Abishek Khanal',
                  'Contact no.: 9837544736'
                    ],)
                  ],
                ),
                ),
                SettingBoxButton(
                height: size.height * 0.250,
                width: size.width*0.200,
                child: ListView(
                  children: [
                PaddedText(padd: 15.0, 
                text: 'For More',
                style: TextStyle(fontWeight: FontWeight.bold),),
                BulletList(
                  bullet: Icons.circle_outlined,
                  strings: [
                    'Contact Us',
                    'Privacy & Policy'
                  ],
                  ),
                // Padding(
                //   padding: const EdgeInsets.only(top:8.0, left: 8.0, right: 15),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Icon(Icons.circle_outlined), Text('Contact Us')],),
                // ),
                ],),),
                // Padding(
                //   padding: const EdgeInsets.only(top:8.0),
                //   child: Container(
                //     height: 150,
                //     width: firstRowWidth *0.5,
                //     color: Colors.grey,
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left:20.0, top: 8.0),
                //   child: Container(
                //     child: SizedBox(
                //       height: 150,
                //       width: firstRowWidth*0.2),
                //     color: Colors.grey,
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: Row(
              children: [
                SettingIconBoxButton(
                  icon:Icons.edit,
                  height:size.height * 0.150,
                  width: size.width * 0.200,
                  text: 'Update Profile',
                  ),
                  SettingIconBoxButton(
                  icon:Icons.settings,
                  height:size.height * 0.150,
                  width: 200,
                  text: 'Settings',
                  ),
                  SettingIconBoxButton(
                  icon:Icons.privacy_tip,
                  height:size.height * 0.150,
                  width: 200,
                  text: 'Privacy',
                  ),
                  SettingIconBoxButton(
                  icon:Icons.question_mark_rounded,
                  height:size.height * 0.150,
                  width: size.width *0.200,
                  text: 'About Us',
                  ),
              ],
            ),
          ),
          
          
          // Padding(
          //   padding: const EdgeInsets.only(top:20.0),
          //   child: Row(children: [
          //       Padding(
          //         padding: EdgeInsets.only(left:10.0),
          //         child: Container(
          //           height: firstRowHeight,
          //           width: 200,
          //           color: Colors.grey,
          //           child: Column(children: [Padding(
          //             padding: const EdgeInsets.all(15.0),
          //             child: Icon(Icons.edit),
          //           ), 
          //           Text('Update Profile')]),
          //         ),
          //       ),
          //       Padding(
          //         padding: EdgeInsets.only(left:20.0),
          //         child: Container(
          //           height: firstRowHeight,
          //           width: 200,
          //           color: Colors.red,
          //         ),
          //       ),Padding(
          //         padding: EdgeInsets.only(left:20.0),
          //         child: Container(
          //           height: firstRowHeight,
          //           width: 200,
          //           color: Colors.red,
          //         ),
          //       ),
          //     ]),
          // ),
        ],
      ),
    ]);
  }
}
