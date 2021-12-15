import 'dart:ui';
import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  final Widget child;
  final double sigmaX;
  final double sigmaY;
  final Clip? clip;
  const GlassMorphism({
    Key? key,
    required this.child,
    required this.sigmaX,
    required this.sigmaY,
    this.clip
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(clipBehavior: clip??Clip.antiAlias,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
        child: child,
      ),
    );
  }
}
