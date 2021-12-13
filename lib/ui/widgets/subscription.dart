import 'package:flutter/material.dart';

class Subscription extends StatelessWidget {
  const Subscription({
    Key? key,
    required this.duration,
    required this.amount,
    required this.size,
  }) : super(key: key);

  final Size size;
  final String duration;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 8.337,
      width: size.width / 1.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          color: Colors.transparent,
          border: Border.all(color: Colors.white)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: EdgeInsets.only(left: size.width / 20.830),
          child: RichText(
            text: TextSpan(
              text: duration,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
              children: [
                TextSpan(
                  text: amount,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withOpacity(0.4)),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: size.width / 12.5),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFffffff).withOpacity(0.17),
                    blurRadius: 6.0,
                    spreadRadius: 4.0,
                    offset: Offset(
                      0.0,
                      3.0,
                    ),
                  ),
                ]),
            child: Text(
              'SALE',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
        )
      ]),
    );
  }
}
