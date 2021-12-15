import 'package:flutter/material.dart';
import 'package:tarot/ui/ads.dart';

import 'package:tarot/utils/extension.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController textController = TextEditingController();
  bool isActive = false;
  bool isMale = false;
  bool isFirstTime = true;

  @override
  void initState() {
    super.initState();
    isFirstTime = true;
  }


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
          SingleChildScrollView(
            child: Column(
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
                            color: Colors.white.withOpacity(0.5),
                            shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                    ]),
                SizedBox(
                  height: size.height / 4 - size.height / 14,
                ),
                Text('Заполните поля',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'TT Norms')),
                SizedBox(height: size.height / 31),
                Container(
                    height: size.height / 2.72,
                    width: size.width / 1.09,
                    decoration: BoxDecoration(
                      color: Color(0xff453464).withOpacity(0.6),
                      border: Border.all(color: Colors.white.withOpacity(0.4)),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height / 15.51),
                        Padding(
                          padding: EdgeInsets.only(left: size.width / 15.6),
                          child: Text('Имя',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white.withOpacity(0.5))),
                        ),
                        SizedBox(height: size.height / 83.37),
                        Center(
                          child: Container(
                            height: size.height / 13.89,
                            width: size.width / 1.2,
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              controller: textController,
                              decoration: InputDecoration(
                                fillColor: Color(0xff453464),
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14.0)),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white.withOpacity(0.5)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white.withOpacity(0.2)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height / 41.688,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: size.width / 15.6),
                          child: Text('Пол',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white.withOpacity(0.5))),
                        ),
                        SizedBox(
                          height: size.height / 83.375,
                        ),
                        Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: size.height / 13.896,
                                  width: size.width / 2.467,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(14)),
                                      border: Border.all(
                                          color: Colors.white.withOpacity(0.4))),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Мужской',
                                        style: TextStyle(
                                            color: (isFirstTime || isMale)
                                                ? Colors.white
                                                : Colors.white.withOpacity(0.5),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          isFirstTime = false;
                                          isMale = true;
                                          setState(() {
                                            
                                          });
                                        },
                                        child: Container(
                                          height: size.height / 27.79,
                                          width: size.width / 15.625,
                                          decoration: BoxDecoration(
                                              color: (!isFirstTime && isMale)
                                                  ? Colors.white
                                                  : Colors.transparent,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Colors.white)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: size.height / 13.896,
                                  width: size.width / 2.467,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(14)),
                                      border: Border.all(
                                          color: Colors.white.withOpacity(0.4))),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Женский',
                                        style: TextStyle(
                                            color: (isFirstTime || !isMale)
                                                ? Colors.white
                                                : Colors.white.withOpacity(0.5),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          isFirstTime = false;
                                          isMale = false;
                                          setState(() {
                                            
                                          });
                                        },
                                        child: Container(
                                          height: size.height / 27.79,
                                          width: size.width / 15.625,
                                          decoration: BoxDecoration(
                                              color: (!isFirstTime && !isMale)
                                                  ? Colors.white
                                                  : Colors.transparent,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Colors.white)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ]),
                        )
                      ],
                    )),
                SizedBox(
                  height: size.height / 7.25,
                ),
                GestureDetector(
                  onTap: () {
                    if (!isFirstTime && textController.text.isNotEmpty)
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Advertisment();
                      }));
                  },
                  child: Container(
                      height: size.height / 14.5,
                      width: size.width / 1.5756,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          color: (!isFirstTime && textController.text.isNotEmpty)
                              ? Colors.white
                              : Colors.white.withOpacity(0.2)),
                      child: Center(
                          child: Text(
                        'Продолжить',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'TT Norms',
                            color: (!isFirstTime && textController.text.isNotEmpty)
                                ? Color(0xff453464)
                                : Colors.white.withOpacity(0.4)),
                      ))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
