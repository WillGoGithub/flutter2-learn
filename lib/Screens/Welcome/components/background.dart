import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(children: <Widget>[
        Positioned(
            top: -100,
            left: -120,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: [
                      0.35,
                      0.8,
                    ],
                    colors: [
                      Colors.purple.shade100,
                      Colors.blue.shade50,
                    ],
                  )),
            )),
        Positioned(
            bottom: -20,
            left: -30,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: [
                      0.2,
                      0.7,
                    ],
                    colors: [
                      Colors.blue.shade50,
                      Colors.purple.shade50,
                    ],
                  )),
            )),
        child
      ]),
    );
  }
}
