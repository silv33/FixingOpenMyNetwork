import 'package:flutter/material.dart';
import 'package:open_my_network_app/app/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              decoration: BoxDecoration(color: Colors.grey[200]),
            ),
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 150.0,
                        right: 120.0,
                        top: 80.0,
                      ),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: 250,
                          child: Card(
                            child: Text("image here"),
                            color: Colors.grey[300],
                          )),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 32.0),
                          child: Text(
                            'Open My Network',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Flexible(
                              child: SizedBox(
                                width: 300,
                                child: AppText(
                                  isSelectableText: false,
                                  strText:
                                      'adsksadlasd askld asd alskd alskd laks dlkas dlka sdkl d ojsv okjsvn kjacn kzjnc lkasnc kjszcnbhabc lkscs kzmclk  kzjn n zkjn xkjz kznx  kzjnjcznx kjsdhiuh jhbzch jhbacjhvb jhbcjhab lkA kjc kjcn kjscsn',
                                  fontSize: 10,
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Try Now',
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(1.0))),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.grey[400])),
                          ),
                        ),
                        SizedBox(height: 100.0),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                'Our Services',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    // (0,0) // 1. Point
    path.lineTo(0.0, h - 380);
    path.lineTo(w, h - 280);
    path.lineTo(w, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    // throw UnimplementedError();
    return false;
  }
}
