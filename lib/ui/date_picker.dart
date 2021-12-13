import 'package:flutter/material.dart';
import 'package:tarot/ui/widgets/date_time_picker.dart';
import 'package:tarot/utils/extension.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    Size size = ResponsiveUtil(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff191539), Color(0xff9067B0)]),
          ),
        ),
        Center(
            child: Image.asset(
          'assets/background.png',
          fit: BoxFit.fill,
        )),
        Column(
          children: [
            SizedBox(
              height: size.height / 10.934,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width / 23.437,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Отмена',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(height: size.height / 6.947),
            Text(
              'Выберете дату рождения',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: size.height / 41.68),
            Container(
              height: size.height / 5,
              width: size.width / 1.17,
              decoration: BoxDecoration(
                color: Color(0xff453464),
                border: Border.all(color: Colors.white.withOpacity(0.4)),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Center(
                child: Container(
                  height: size.height / 8.776,
                  width: size.width / 1.72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff191539).withOpacity(0.5),
                          Color(0xff9067B0)
                        ]),
                  ),
                  child: DatePickerWidget(
                    maxDate: DateTime(2030),
                    minDate: DateTime(2000),
                    onChangedDate: (date) {},
                    initialDate: DateTime.now(),
                    backgroundColor: Colors.transparent,
                    textColor: Colors.white,
                    overlayColor: Color(0xff453464).withOpacity(0.2),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height / 44.4667,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  width: size.width / 1.5756,
                  height: size.height / 14.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      color: Colors.white),
                  child: Center(
                      child: Text('Принять',
                          style: TextStyle(
                            color: Color(0xff453464),
                            fontSize: 15,
                            fontFamily: 'TT Norms',
                            fontWeight: FontWeight.w400,
                          )))),
            )
          ],
        )
      ],
    ));
  }
}
