library date_time_picker_tr;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DatePickerWidget extends StatefulWidget {
  DatePickerWidget({
    Key? key,
    @required this.initialDate,
    @required this.minDate,
    @required this.maxDate,
    @required this.onChangedDate,
    double? height,
    double? width,
    Color? textColor,
    Color? backgroundColor,
    Color? overlayColor,
  })  : assert(initialDate!.isAfter(minDate!)),
        height = height ?? 300.0,
        width = width ?? 100.0,
        textColor = textColor ?? Colors.black,
        backgroundColor = backgroundColor ?? Colors.white,
        overlayColor = overlayColor ?? Colors.green,
        super(key: key);
  final DateTime? initialDate;
  final DateTime? minDate;
  final DateTime? maxDate;
  final Function(DateTime)? onChangedDate;
  double height;
  double width;
  Color textColor;
  Color backgroundColor;
  Color overlayColor;

  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  
  final listMoths = <String>[
    "Ocak",
    "Şubat",
    "Mart",
    "Nisan",
    "Mayıs",
    "Haziran",
    "Temmuz",
    "Ağustos",
    "Eylül",
    "Ekim",
    "Kasım",
    "Aralık"
  ];

  late int _day;
  late int _month;
  late int _year;

  _changeDay(int day) {
    _day = day + 1;
    dateTime = DateTime(_year, _month, _day);
    widget.onChangedDate!(dateTime);
  }

  _changeMoth(int month) {
    _month = month + 1;
    dateTime = DateTime(_year, _month, _day);
    widget.onChangedDate!(dateTime);
  }

  _changeYear(int year) {
    _year = year + widget.minDate!.year;
    dateTime = DateTime(_year, _month, _day);
    widget.onChangedDate!(dateTime);
  }

  //Day , Month , Year Settings
  _days(int selectedDay) {
    var listWidgetDay = <Widget>[];
    for (var i = 1; i <= 31; i++) {
      listWidgetDay.add(Center(
        child: Text(
          '${i}',
          style: TextStyle(
        color: (selectedDay + 1 == i)
            ? Colors.white
            : Colors.white.withOpacity(0.4),
        fontWeight: FontWeight.bold,
          ),
        ),
      ));
    }
    return listWidgetDay;
  }

  _months(int selectedMonth) {
    var listWidgetMoth = <Widget>[];
    for (var i = 0; i < DateTime.monthsPerYear; i++) {
      listWidgetMoth.add(Center(
          child: Text(
        listMoths[i],
        style: TextStyle(
          color: (selectedMonth == i)
              ? Colors.white
              : Colors.white.withOpacity(0.4),
          fontWeight: FontWeight.bold,
        ),
      )));
    }
    return listWidgetMoth;
  }

  _years(int selectedYear) {
    var listWidgetYear = <Widget>[];
    for (var i = widget.minDate!.year; i <= widget.maxDate!.year; i++) {
      print(i);
      listWidgetYear.add(Center(
          child: Text(
        '${i}',
        style: TextStyle(
          color: (int.parse('20' + selectedYear.toString()) == i)
              ? Colors.white
              : Colors.white.withOpacity(0.4),
          fontWeight: FontWeight.bold,
        ),
      )));
    }

    return listWidgetYear;
  }

  //Setting date
  late FixedExtentScrollController _controllerDay;
  late FixedExtentScrollController _controllerMoth;
  late FixedExtentScrollController _controllerYear;
  late DateTime dateTime;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controllerDay =
        FixedExtentScrollController(initialItem: widget.initialDate!.day - 1);

    _controllerMoth =
        FixedExtentScrollController(initialItem: widget.initialDate!.month - 1);

    _controllerYear = FixedExtentScrollController(
        initialItem: widget.initialDate!.year - widget.minDate!.year);
    //
    dateTime = DateTime.parse(widget.initialDate.toString());
    _day = dateTime.day;
    _month = dateTime.month;
    _year = dateTime.year;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controllerDay.dispose();
    _controllerMoth.dispose();
    _controllerYear.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: widget.backgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: widget.height,
                width: widget.width,
                child: CupertinoPicker(
                  
                  magnification: 1.5,
                  useMagnifier: true,
                  backgroundColor: widget.backgroundColor,
                  scrollController: _controllerDay,
                  selectionOverlay: null,
                  looping: true,
                  itemExtent: 50.0,
                  onSelectedItemChanged: _changeDay,
                  // ignore: invalid_use_of_protected_member
                  children: _days((_controllerDay.positions.isEmpty)
                      ? _controllerDay.initialItem
                      : _controllerDay.selectedItem),
                ),
              ),
              Container(
                height: widget.height,
                width: widget.width,
                child: CupertinoPicker(
                  magnification: 1.5,
                  useMagnifier: true,
                  backgroundColor: widget.backgroundColor,
                  scrollController: _controllerMoth,
                  selectionOverlay: null,
                  looping: true,
                  itemExtent: 50.0,
                  onSelectedItemChanged: _changeMoth,
                  // ignore: invalid_use_of_protected_member
                  children: _months((_controllerMoth.positions.isEmpty)
                      ? _controllerMoth.initialItem
                      : _controllerMoth.selectedItem),
                ),
              ),
              Container(
                height: widget.height,
                width: widget.width,
                child: CupertinoPicker(
                  magnification: 1.5,
                  useMagnifier: true,
                  backgroundColor: widget.backgroundColor,
                  scrollController: _controllerYear,
                  selectionOverlay: null,
                  looping: true,
                  itemExtent: 50.0,
                  onSelectedItemChanged: _changeYear,
                  // ignore: invalid_use_of_protected_member
                  children: _years((_controllerYear.positions.isEmpty)
                      ? _controllerYear.initialItem
                      : _controllerYear.selectedItem),
                ),
              ),
            ],
          ),
        ),
        IgnorePointer(
          child: Container(
            width: 350.0,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ],
    );
  }
}
