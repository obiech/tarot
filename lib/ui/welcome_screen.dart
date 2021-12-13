import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tarot/ui/date_picker.dart';
import 'package:tarot/ui/registration.dart';
import 'package:tarot/utils/extension.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isActive = false;
  bool termsOfUseController = false;
  bool personalDetailsController = false;
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height / 14,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          shape: BoxShape.circle),
                    ),
                  ]),
              SizedBox(
                height: size.height / 4 - size.height / 14,
              ),
              Text('Выберете дату рождения',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'TT Norms')),
              SizedBox(height: size.height / 31),
              Container(
                height: size.height / 5,
                width: size.width / 1.17,
                decoration: BoxDecoration(
                  color: Color(0xff453464),
                  border: Border.all(color: Colors.white.withOpacity(0.4)),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DatePicker();
                      }));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        elevation: MaterialStateProperty.all(25.0)),
                    child: Container(
                        height: size.height / 13.34,
                        width: size.width / 2.23214,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xff191539),
                                  Color(0xff9067B0),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        child: Center(
                            child: Text('01 января 2021',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)))),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text('Дата важня для определения\n ваших персональных чисел',
                  style: TextStyle(
                      fontFamily: 'TT Norms',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white)),
              SizedBox(
                height: size.height / 7.847,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: size.width / 13.3928),
                  Checkbox(
                    side: BorderSide(color: Colors.white),
                    activeColor: Colors.white,
                    value: termsOfUseController,
                    onChanged: (bool? value) {
                      termsOfUseController = !termsOfUseController;
                      setState(() {});
                    },
                  ),
                  Text('Пользовательское соглашение',
                      style: TextStyle(
                          fontFamily: 'TT Norms',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withOpacity(0.5)))
                ],
              ),
              Row(
                children: [
                  SizedBox(width: size.width / 13.3928),
                  Checkbox(
                    side: BorderSide(color: Colors.white),
                    activeColor: Colors.white,
                    value: personalDetailsController,
                    onChanged: (bool? value) {
                      personalDetailsController = !personalDetailsController;
                      setState(() {});
                    },
                  ),
                  Text('Политика обработки персональных данных',
                      style: TextStyle(
                          fontFamily: 'TT Norms',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withOpacity(0.5))),
                ],
              ),
              SizedBox(
                height: size.height / 27.7916,
              ),
              GestureDetector(
                onTap: () {
                  if (termsOfUseController && personalDetailsController)
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegistrationPage();
                    }));
                },
                child: Container(
                    height: size.height / 11.91,
                    width: size.width / 1.5756,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        color:
                            (termsOfUseController && personalDetailsController)
                                ? Colors.white
                                : Colors.white.withOpacity(0.2)),
                    child: Center(
                        child: Text(
                      'Продолжить',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'TT Norms',
                          color: (termsOfUseController &&
                                  personalDetailsController)
                              ? Color(0xff453464)
                              : Colors.white.withOpacity(0.4)),
                    ))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
