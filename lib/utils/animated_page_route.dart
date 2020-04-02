import 'package:flutter/material.dart';

class AnimatedPageRoute extends PageRouteBuilder {
  final Widget widget;

  AnimatedPageRoute({this.widget})
      : super(
            transitionDuration: Duration(milliseconds: 500),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secAnimation,
                Widget child) {

                  var begin = Offset(1.0, 0.0);
                  var end = Offset.zero;
                  var curve = Curves.easeInOutQuint;
                  var curveTween = CurveTween(curve: curve);
              
                  var tweenAnimation = Tween(begin: begin, end: end).chain(curveTween);


//Slide Transition
              return SlideTransition(
                position: animation.drive(tweenAnimation),
                child: child,
              );
            },


//Scale Transition
            //   return ScaleTransition(
            //     scale: animation.drive(curveTween),
            //     child: child,
            //   );
            // },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secAnimation) {
              return widget;
            });
}
