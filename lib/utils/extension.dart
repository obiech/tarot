import 'package:flutter/material.dart';

extension ResponsiveUtil on BuildContext {
  Size get size => MediaQuery.of(this).size;

}
