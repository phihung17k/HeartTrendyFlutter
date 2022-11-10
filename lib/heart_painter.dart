import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class HeartPainter extends CustomPainter {
  double value;

  HeartPainter({this.value = 2});

  double dotWidth = 1;
  double dotSpace = 2.0;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color.fromRGBO(244, 143, 177, 1)
      ..strokeWidth = 1
      ..isAntiAlias = true
      ..strokeJoin = StrokeJoin.round
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double width = size.width;
    double height = size.height;

    //Offsets
    Offset p1, p2l, p3l, p4, p2r, p3r;
    Offset p1_2, p2l_2, p3l_2, p4_2, p2r_2, p3r_2;
    Offset p1_3, p2l_3, p3l_3, p4_3, p2r_3, p3r_3;
    Offset p1_4, p2l_4, p3l_4, p4_4, p2r_4, p3r_4;

    var path = Path();
    var path2 = Path();
    var path3 = Path();
    var path4 = Path();
    // value = 2;
    if (value > 1.66) {
      p1 = Offset(size.width / 2, size.height / 5);
      p2l = Offset(width / 5, -height / 3 + value * 20);
      p3l = Offset(-width / 2 + value * 20, height / 2 - value * 20);
      p4 = Offset(width / 2, height);
      p2r = Offset(width + width / 2 - value * 20, height / 2 - value * 20);
      p3r = Offset(width - width / 5, -height / 3 + value * 20);

      path.moveTo(p1.dx, p1.dy);
      path.cubicTo(p2l.dx, p2l.dy, p3l.dx, p3l.dy, p4.dx, p4.dy);
      path.cubicTo(p2r.dx, p2r.dy, p3r.dx, p3r.dy, p1.dx, p1.dy);
      // canvas.drawPath(path, paint);

      p1_2 = Offset(size.width / 2, size.height / 5 + value * 15);
      p2l_2 = Offset(width / 5, -height / 3 + value * 30 + value * 20);
      p3l_2 =
          Offset(-width / 2 + value * 30 + value * 20, height / 2 - value * 20);
      p4_2 = Offset(width / 2, height - value * 15);
      p2r_2 = Offset(
          width + width / 2 - value * 30 - value * 20, height / 2 - value * 20);
      p3r_2 = Offset(width - width / 5, -height / 3 + value * 30 + value * 20);

      path2.moveTo(p1_2.dx, p1_2.dy);
      path2.cubicTo(p2l_2.dx, p2l_2.dy, p3l_2.dx, p3l_2.dy, p4_2.dx, p4_2.dy);
      path2.cubicTo(p2r_2.dx, p2r_2.dy, p3r_2.dx, p3r_2.dy, p1_2.dx, p1_2.dy);
      // canvas.drawPath(path2, paint);

      p1_3 = Offset(size.width / 2, size.height / 5 + value * 20);
      p2l_3 = Offset(width / 5, -height / 3 + value * 40 + value * 20);
      p3l_3 =
          Offset(-width / 2 + value * 40 + value * 20, height / 2 - value * 20);
      p4_3 = Offset(width / 2, height - value * 20);
      p2r_3 = Offset(
          width + width / 2 - value * 40 - value * 20, height / 2 - value * 20);
      p3r_3 = Offset(width - width / 5, -height / 3 + value * 40 + value * 20);

      path3.moveTo(p1_3.dx, p1_3.dy);
      path3.cubicTo(p2l_3.dx, p2l_3.dy, p3l_3.dx, p3l_3.dy, p4_3.dx, p4_3.dy);
      path3.cubicTo(p2r_3.dx, p2r_3.dy, p3r_3.dx, p3r_3.dy, p1_3.dx, p1_3.dy);
      // canvas.drawPath(path3, paint);

      p1_4 = Offset(size.width / 2, size.height / 5 - value * 5);
      p2l_4 = Offset(width / 5, -height / 3 - value * 10 + value * 20);
      p3l_4 =
          Offset(-width / 2 - value * 10 + value * 20, height / 2 - value * 20);
      p4_4 = Offset(width / 2, height + value * 10);
      p2r_4 = Offset(
          width + width / 2 + value * 10 - value * 20, height / 2 - value * 20);
      p3r_4 = Offset(width - width / 5, -height / 3 - value * 10 + value * 20);

      path4.moveTo(p1_4.dx, p1_4.dy);
      path4.cubicTo(p2l_4.dx, p2l_4.dy, p3l_4.dx, p3l_4.dy, p4_4.dx, p4_4.dy);
      path4.cubicTo(p2r_4.dx, p2r_4.dy, p3r_4.dx, p3r_4.dy, p1_4.dx, p1_4.dy);
      // canvas.drawPath(path4, paint);
    } else if (1.33 < value && value <= 1.66) {
      p1 = Offset(size.width / 2, size.height / 5 - value * 10);
      p2l = Offset(width / 5, -height / 3 + value * 10);
      p3l = Offset(-width / 2 + value * 10, height / 2 - value * 10);
      p4 = Offset(width / 2, height);
      p2r = Offset(width + width / 2 - value * 10, height / 2 - value * 10);
      p3r = Offset(width - width / 5, -height / 3 + value * 10);

      path.moveTo(p1.dx, p1.dy);
      path.cubicTo(p2l.dx, p2l.dy, p3l.dx, p3l.dy, p4.dx, p4.dy);
      path.cubicTo(p2r.dx, p2r.dy, p3r.dx, p3r.dy, p1.dx, p1.dy);
      // canvas.drawPath(path, paint);

      p1_2 = Offset(size.width / 2, size.height / 5 + value * 15 - value * 10);
      p2l_2 = Offset(width / 5, -height / 3 + value * 30 + value * 10);
      p3l_2 =
          Offset(-width / 2 + value * 30 + value * 10, height / 2 - value * 10);
      p4_2 = Offset(width / 2, height - value * 15);
      p2r_2 = Offset(
          width + width / 2 - value * 30 - value * 10, height / 2 - value * 10);
      p3r_2 = Offset(width - width / 5, -height / 3 + value * 30 + value * 10);

      path2.moveTo(p1_2.dx, p1_2.dy);
      path2.cubicTo(p2l_2.dx, p2l_2.dy, p3l_2.dx, p3l_2.dy, p4_2.dx, p4_2.dy);
      path2.cubicTo(p2r_2.dx, p2r_2.dy, p3r_2.dx, p3r_2.dy, p1_2.dx, p1_2.dy);
      // canvas.drawPath(path2, paint);

      p1_3 = Offset(size.width / 2, size.height / 5 + value * 20 - value * 10);
      p2l_3 = Offset(width / 5, -height / 3 + value * 40 + value * 10);
      p3l_3 =
          Offset(-width / 2 + value * 40 + value * 10, height / 2 - value * 10);
      p4_3 = Offset(width / 2, height - value * 20);
      p2r_3 = Offset(
          width + width / 2 - value * 40 - value * 10, height / 2 - value * 10);
      p3r_3 = Offset(width - width / 5, -height / 3 + value * 40 + value * 10);

      path3.moveTo(p1_3.dx, p1_3.dy);
      path3.cubicTo(p2l_3.dx, p2l_3.dy, p3l_3.dx, p3l_3.dy, p4_3.dx, p4_3.dy);
      path3.cubicTo(p2r_3.dx, p2r_3.dy, p3r_3.dx, p3r_3.dy, p1_3.dx, p1_3.dy);
      // canvas.drawPath(path3, paint);

      p1_4 = Offset(size.width / 2, size.height / 5 - value * 5 - value * 10);
      p2l_4 = Offset(width / 5, -height / 3 - value * 10 + value * 10);
      p3l_4 =
          Offset(-width / 2 - value * 10 + value * 10, height / 2 - value * 10);
      p4_4 = Offset(width / 2, height + value * 10);
      p2r_4 = Offset(
          width + width / 2 + value * 10 - value * 10, height / 2 - value * 10);
      p3r_4 = Offset(width - width / 5, -height / 3 - value * 10 + value * 10);

      path4.moveTo(p1_4.dx, p1_4.dy);
      path4.cubicTo(p2l_4.dx, p2l_4.dy, p3l_4.dx, p3l_4.dy, p4_4.dx, p4_4.dy);
      path4.cubicTo(p2r_4.dx, p2r_4.dy, p3r_4.dx, p3r_4.dy, p1_4.dx, p1_4.dy);
      // canvas.drawPath(path4, paint);
    } else {
      p1 = Offset(size.width / 2, size.height / 5 - value * 20);
      p2l = Offset(width / 5, -height / 3);
      p3l = Offset(-width / 2, height / 2);
      p4 = Offset(width / 2, height);
      p2r = Offset(width + width / 2, height / 2);
      p3r = Offset(width - width / 5, -height / 3);

      path.moveTo(p1.dx, p1.dy);
      path.cubicTo(p2l.dx, p2l.dy, p3l.dx, p3l.dy, p4.dx, p4.dy);
      path.cubicTo(p2r.dx, p2r.dy, p3r.dx, p3r.dy, p1.dx, p1.dy);
      // canvas.drawPath(path, paint);

      p1_2 = Offset(size.width / 2, size.height / 5 + value * 15 - value * 20);
      p2l_2 = Offset(width / 5, -height / 3 + value * 30);
      p3l_2 = Offset(-width / 2 + value * 30, height / 2);
      p4_2 = Offset(width / 2, height - value * 15);
      p2r_2 = Offset(width + width / 2 - value * 30, height / 2);
      p3r_2 = Offset(width - width / 5, -height / 3 + value * 30);

      path2.moveTo(p1_2.dx, p1_2.dy);
      path2.cubicTo(p2l_2.dx, p2l_2.dy, p3l_2.dx, p3l_2.dy, p4_2.dx, p4_2.dy);
      path2.cubicTo(p2r_2.dx, p2r_2.dy, p3r_2.dx, p3r_2.dy, p1_2.dx, p1_2.dy);
      // canvas.drawPath(path2, paint);

      p1_3 = Offset(size.width / 2, size.height / 5 + value * 20 - value * 20);
      p2l_3 = Offset(width / 5, -height / 3 + value * 40);
      p3l_3 = Offset(-width / 2 + value * 40, height / 2);
      p4_3 = Offset(width / 2, height - value * 20);
      p2r_3 = Offset(width + width / 2 - value * 40, height / 2);
      p3r_3 = Offset(width - width / 5, -height / 3 + value * 40);

      path3.moveTo(p1_3.dx, p1_3.dy);
      path3.cubicTo(p2l_3.dx, p2l_3.dy, p3l_3.dx, p3l_3.dy, p4_3.dx, p4_3.dy);
      path3.cubicTo(p2r_3.dx, p2r_3.dy, p3r_3.dx, p3r_3.dy, p1_3.dx, p1_3.dy);
      // canvas.drawPath(path3, paint);

      p1_4 = Offset(size.width / 2, size.height / 5 - value * 5 - value * 20);
      p2l_4 = Offset(width / 5, -height / 3 - value * 10);
      p3l_4 = Offset(-width / 2 - value * 10, height / 2);
      p4_4 = Offset(width / 2, height + value * 10);
      p2r_4 = Offset(width + width / 2 + value * 10, height / 2);
      p3r_4 = Offset(width - width / 5, -height / 3 - value * 10);

      path4.moveTo(p1_4.dx, p1_4.dy);
      path4.cubicTo(p2l_4.dx, p2l_4.dy, p3l_4.dx, p3l_4.dy, p4_4.dx, p4_4.dy);
      path4.cubicTo(p2r_4.dx, p2r_4.dy, p3r_4.dx, p3r_4.dy, p1_4.dx, p1_4.dy);
      // canvas.drawPath(path4, paint);
    }
    // canvas.drawPath(path, paint);
    // canvas.drawPath(path2, paint);
    // canvas.drawPath(path3, paint);
    // canvas.drawPath(path4, paint);

    double distance1 = 0.0;
    double distance2 = 0.0;
    double distance3 = 0.0;
    double distance4 = 0.0;

    //test curve
    var paint2 = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5;
    var points1 = [p1, p2l, p3l, p4, p2r, p3r];
    var points2 = [p1_2, p2l_2, p3l_2, p4_2, p2r_2, p3r_2];
    var points3 = [p1_3, p2l_3, p3l_3, p4_3, p2r_3, p3r_3];
    var points4 = [p1_4, p2l_4, p3l_4, p4_4, p2r_4, p3r_4];
    // canvas.drawPoints(PointMode.points, points1, paint2);
    // canvas.drawPoints(PointMode.points, points2, paint2);
    // canvas.drawPoints(PointMode.points, points3, paint2);
    // canvas.drawPoints(PointMode.points, points4, paint2);

    List<Offset> count1 = [];
    for (PathMetric pathMetric in path.computeMetrics()) {
      while (distance1 < pathMetric.length) {
        var tangent = pathMetric.getTangentForOffset(distance1);
        count1.add(tangent!.position);
        // canvas.drawPoints(PointMode.points, [tangent.position], paint);
        distance1 += dotWidth;
        distance1 += dotSpace;
      }
    }

    List<Offset> count2 = [];
    for (PathMetric pathMetric in path2.computeMetrics()) {
      while (distance2 < pathMetric.length) {
        var tangent = pathMetric.getTangentForOffset(distance2);
        count2.add(tangent!.position);
        // canvas.drawPoints(PointMode.points, [tangent.position], paint);
        distance2 += dotWidth;
        distance2 += dotSpace;
      }
    }

    List<Offset> count3 = [];
    for (PathMetric pathMetric in path3.computeMetrics()) {
      while (distance3 < pathMetric.length) {
        var tangent = pathMetric.getTangentForOffset(distance3);
        count3.add(tangent!.position);
        // canvas.drawPoints(PointMode.points, [tangent.position], paint);
        distance3 += dotWidth;
        distance3 += dotSpace;
      }
    }

    List<Offset> count4 = [];
    for (PathMetric pathMetric in path4.computeMetrics()) {
      while (distance4 < pathMetric.length) {
        var tangent = pathMetric.getTangentForOffset(distance4);
        count4.add(tangent!.position);
        distance4 += dotWidth;
        distance4 += dotSpace;
      }
    }

    int midCount1 = count1.length ~/ 2;
    int midCount2 = count2.length ~/ 2;
    int midCount3 = count3.length ~/ 2;
    for (var j = 0; j < 3; j++) {
      for (var i = 0; i < count1.length; i++) {
        //count2
        if (i <= midCount2) {
          var offset1 = count1[i];
          var offset2 = count2[i];
          var path = Path()
            ..moveTo(offset1.dx, offset1.dy)
            ..lineTo(offset2.dx, offset2.dy);
          // canvas.drawPath(path, paint);
          canvas.drawPoints(PointMode.points, drawPointsFromPath(path), paint);
        }
        if (count2.length - i > midCount2) {
          var offset1 = count1[count1.length - i - 1];
          var offset2 = count2[count2.length - i - 1];
          var path = Path()
            ..moveTo(offset1.dx, offset1.dy)
            ..lineTo(offset2.dx, offset2.dy);
          canvas.drawPoints(PointMode.points, drawPointsFromPath(path), paint);
        }
        if (i < midCount2) {
          var offset1 = count1[midCount1 - i];
          var offset2 = count2[midCount2 - i];
          var path = Path()
            ..moveTo(offset1.dx, offset1.dy)
            ..lineTo(offset2.dx, offset2.dy);
          canvas.drawPoints(PointMode.points, drawPointsFromPath(path), paint);
        }
        if (i + midCount2 < count2.length) {
          var offset1 = count1[midCount1 + i];
          var offset2 = count2[midCount2 + i];
          var path = Path()
            ..moveTo(offset1.dx, offset1.dy)
            ..lineTo(offset2.dx, offset2.dy);
          canvas.drawPoints(PointMode.points, drawPointsFromPath(path), paint);
        }

        //count3
        if (i <= midCount3) {
          var offset1 = count1[i];
          var offset3 = count3[i];
          var path = Path()
            ..moveTo(offset1.dx, offset1.dy)
            ..lineTo(offset3.dx, offset3.dy);
          canvas.drawPoints(PointMode.points, drawPointsFromPath(path), paint);
        }
        if (count3.length - i > midCount3) {
          var offset1 = count1[count1.length - i - 1];
          var offset3 = count3[count3.length - i - 1];
          var path = Path()
            ..moveTo(offset1.dx, offset1.dy)
            ..lineTo(offset3.dx, offset3.dy);
          canvas.drawPoints(PointMode.points, drawPointsFromPath(path), paint);
        }
        if (i < midCount3) {
          var offset1 = count1[midCount1 - i];
          var offset3 = count3[midCount3 - i];
          var path = Path()
            ..moveTo(offset1.dx, offset1.dy)
            ..lineTo(offset3.dx, offset3.dy);
          canvas.drawPoints(PointMode.points, drawPointsFromPath(path), paint);
        }
        if (i + midCount3 < count3.length) {
          var offset1 = count1[midCount1 + i];
          var offset3 = count3[midCount3 + i];
          var path = Path()
            ..moveTo(offset1.dx, offset1.dy)
            ..lineTo(offset3.dx, offset3.dy);
          canvas.drawPoints(PointMode.points, drawPointsFromPath(path), paint);
        }
      }
    }

    int midCount4 = count4.length ~/ 2;
    for (var i = 0; i < count4.length; i++) {
      //count1
      if (i <= midCount1) {
        var offset4 = count4[i];
        var offset1 = count1[i];
        var path = Path()
          ..moveTo(offset4.dx, offset4.dy)
          ..lineTo(offset1.dx, offset1.dy);
        canvas.drawPoints(PointMode.points, drawPointsFromPath(path), paint);
      }
      if (count1.length - i > midCount1) {
        var offset4 = count4[count4.length - i - 1];
        var offset1 = count1[count1.length - i - 1];
        var path = Path()
          ..moveTo(offset4.dx, offset4.dy)
          ..lineTo(offset1.dx, offset1.dy);
        canvas.drawPoints(PointMode.points, drawPointsFromPath(path), paint);
      }
      if (i < midCount1) {
        var offset4 = count4[midCount4 - i];
        var offset1 = count1[midCount1 - i];
        var path = Path()
          ..moveTo(offset4.dx, offset4.dy)
          ..lineTo(offset1.dx, offset1.dy);
        canvas.drawPoints(PointMode.points, drawPointsFromPath(path), paint);
      }
      if (i + midCount1 < count1.length) {
        var offset4 = count4[midCount4 + i];
        var offset1 = count1[midCount1 + i];
        var path = Path()
          ..moveTo(offset4.dx, offset4.dy)
          ..lineTo(offset1.dx, offset1.dy);
        canvas.drawPoints(PointMode.points, drawPointsFromPath(path), paint);
      }
    }
  }

  List<Offset> drawPointsFromPath(Path path) {
    double distance = 0.0;
    int i = 0;
    List<Offset> list = [];
    for (PathMetric pathMetric in path.computeMetrics()) {
      while (distance < pathMetric.length) {
        var tangent = pathMetric.getTangentForOffset(distance);
        var point = tangent!.position;
        var tempPoint = Offset(point.dx, point.dy);
        if (i % 2 == 0) {
          tempPoint = Offset(point.dx + i * Random().nextDouble() * 1.0,
              point.dy + i * Random().nextDouble() * 1.0);
          list.add(tempPoint);
        } else {
          tempPoint = Offset(point.dx - i * Random().nextDouble() * 1.0,
              point.dy - i * Random().nextDouble() * 1.0);
          list.add(tempPoint);
        }
        i++;
        distance += dotWidth;
        distance += dotSpace;
      }
    }
    return list;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
