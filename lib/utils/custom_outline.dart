import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class CustomOutLine extends StatelessWidget {
  final _GradientPainter _painter;
  final Widget? _child;

  final double _width;
  final double _height;
  final EdgeInsetsGeometry _padding;

  CustomOutLine({
    super.key,
    required double strokeWidth,
    required double radius,
    required Gradient gradient,
    Widget? child,
    required double width,
    required double height,
    required EdgeInsetsGeometry padding,
  })  : _painter = _GradientPainter(
            strokeWidth: strokeWidth, radius: radius, gradient: gradient),
        _child = child,
        _width = width,
        _height = height,
        _padding = padding;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _painter,
      child: Container(
        width: _width,
        height: _height,
        padding: _padding,
        child: _child,
      ),
    );
  }
}

class _GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  _GradientPainter(
      {required double strokeWidth,
      required double radius,
      required Gradient gradient})
      : this.strokeWidth = strokeWidth,
        this.radius = radius,
        this.gradient = gradient;

  @override
  void paint(Canvas canvas, Size size) {
    // create outer rectangle equals size
    Rect outerRect = Offset.zero & size;
    var outerRRect =
        RRect.fromRectAndRadius(outerRect, Radius.circular(radius));

    // create inner rectangle smaller by strokeWidth
    Rect innerRect = Rect.fromLTWH(strokeWidth, strokeWidth,
        size.width - strokeWidth * 2, size.height - strokeWidth * 2);
    var innerRRect = RRect.fromRectAndRadius(
        innerRect, Radius.circular(radius - strokeWidth));

    // apply gradient shader
    _paint.shader = gradient.createShader(outerRect);

    // create difference between outer and inner paths and draw it
    Path path1 = Path()..addRRect(outerRRect);
    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}

class _CircleBlurPainter extends CustomPainter {
  _CircleBlurPainter({required this.circleWidth, required this.blurSigma});

  double circleWidth;
  double blurSigma;

  @override
  void paint(Canvas canvas, Size size) {
    Paint line = new Paint()
      ..color = Colors.lightBlue
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = circleWidth
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurSigma);
    Offset center = new Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    canvas.drawCircle(center, radius, line);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class _OverlayPainter extends CustomPainter {
  ui.Image mask;
  ui.Image image;

  _OverlayPainter(this.mask, this.image);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = new Paint();
    paint.isAntiAlias = true;

    if (image != null) {
      var rect = Rect.fromLTRB(0, 0, 200, 200);
      Size outputSize = rect.size;
      Size inputSize = Size(image.width.toDouble(), image.height.toDouble());
      final FittedSizes fittedSizes =
          applyBoxFit(BoxFit.cover, inputSize, outputSize);
      final Size sourceSize = fittedSizes.source;

      canvas.save();
      final Rect sourceRect = Alignment.center.inscribe(
        sourceSize,
        Offset.zero & inputSize,
      );
      canvas.drawImageRect(image, sourceRect, rect, paint);
      canvas.restore();
    }

    if (mask != null) {
      var rect = Rect.fromLTRB(0, 0, 200, 200);
      Size outputSize = rect.size;
      Size inputSize = Size(mask.width.toDouble(), mask.height.toDouble());
      final FittedSizes fittedSizes =
          applyBoxFit(BoxFit.cover, inputSize, outputSize);
      final Size sourceSize = fittedSizes.source;

      canvas.saveLayer(rect, Paint()..blendMode = BlendMode.dstIn);

      final Rect sourceRect = Alignment.center.inscribe(
        sourceSize,
        Offset.zero & inputSize,
      );
      canvas.drawImageRect(mask, sourceRect, rect, paint);
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(_OverlayPainter oldDelegate) {
    return mask != oldDelegate.mask || image != oldDelegate.image;
  }
}
