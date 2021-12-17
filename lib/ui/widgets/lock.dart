import 'package:flutter/material.dart';
import 'package:tarot/ui/widgets/glassmorphism.dart';

class Lock extends StatelessWidget {
  const Lock({
    Key? key,
     this.top,
     this.left,
     this.right,
     this.bottom,required this.size,
  }) : super(key: key);

  final double? top, left, right, bottom;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      bottom: bottom,
      right: right,
      child: GlassMorphism(
        radius: size.height / 13.89,
        sigmaX: 10,
        sigmaY: 10,
        child: Container(
          height: size.height / 13.89,
          width: size.width / 7.81,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white.withOpacity(0.2))),
          child: Center(
            child:
                Icon(Icons.lock, color: Colors.white, size: size.height / 35.1),
          ),
        ),
      ),
    );
  }
}