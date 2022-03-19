import 'dart:async';

import 'package:flutter/material.dart';
import 'package:solar_system_animation/HomePage/home_page.dart';
import 'package:solar_system_animation/Styles/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  bool show = false;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween<double>(begin: 0, end: -450).animate(animationController);

    Future.delayed(Duration.zero, () {
      animationController.forward();
      Timer(Duration(seconds: 2), () {
        setState(() {
          show = true;
        });
      });

      Timer(Duration(seconds: 5), () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => HomePage(),
        //     ));
      });
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   decoration: BoxDecoration(gradient: AppColors.threeColorGradient),
        // child:
        Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/space_bacground.jpg",
                    ))),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.7),
            child: AnimatedBuilder(
                animation: animation,
                builder: (context, Widget chile) {
                  return Transform.translate(
                    offset: Offset(0, animation.value),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: SvgPicture.asset(
                        "assets/images/Rocket Launch _Two Color.svg",
                        height: 185,
                      ),
                    ),
                  );
                }),
          ),
          show == true
              ? Align(
                  alignment: AlignmentDirectional(0.0, 0.16),
                  child: Text(
                    "Space Tech",
                    style: TextStyle(color: Colors.white, fontSize: 44),
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
