import 'package:flutter/material.dart';
import 'package:tarot/utils/extension.dart';

class PageViewIndicator extends StatefulWidget {
   PageViewIndicator({
    Key? key,
    required this.getSize,
    required this.getPosition,
    required  this.itemCount,
    required  this.currentPosition,
  }) : super(key: key);
  final double getSize;
  int itemCount;
  final double getPosition;
  int currentPosition;

  @override
  _PageViewIndicatorState createState() => _PageViewIndicatorState();
}

class _PageViewIndicatorState extends State<PageViewIndicator> {
  @override
  Widget build(BuildContext context) {
    Size size = ResponsiveUtil(context).size;

    return Stack(
      children: [
        Container(
          width: size.width / 1.09,
          height: 5,
          color: Colors.white.withOpacity(0.5),
        ),
        AnimatedPositioned(
          curve: Curves.decelerate,
          left: widget.getPosition,
          duration: Duration(milliseconds: 300),
          child: Container(
            width: widget.getSize,
            height: 5,
            color: Colors.white,
          ),
        ),
        Center(
            child: Text(
          '${widget.currentPosition + 1}' +' из '+ '${widget.itemCount}',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),
        )),
      ],
    );
  }
}
