import 'package:flutter/material.dart';
import 'package:heart/heart_painter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? curveAnimation;
  Animation<double>? tweenAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    curveAnimation =
        CurvedAnimation(parent: controller!, curve: Curves.easeOut);
    tweenAnimation = Tween<double>(begin: 1, end: 2).animate(curveAnimation!);
    controller!.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: AnimatedBuilder(
                animation: tweenAnimation!,
                builder: (context, child) {
                  // return Transform.scale(
                  //   scale: tweenAnimation!.value,
                  //   child: CustomPaint(
                  //     painter: HeartPainter(tweenAnimation!.value),
                  //   ),
                  // );
                  return CustomPaint(
                    painter: HeartPainter(value: tweenAnimation!.value),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
