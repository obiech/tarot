import 'package:flutter/material.dart';
import 'package:tarot/utils/extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tarot/ui/purchase.dart';

class Advertisment extends StatefulWidget {
  const Advertisment({Key? key}) : super(key: key);

  @override
  _AdvertismentState createState() => _AdvertismentState();
}

class _AdvertismentState extends State<Advertisment> {
  @override
  Widget build(BuildContext context) {
    Size size = ResponsiveUtil(context).size;
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff191539), Color(0xff9067B0)]),
              image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.fill)),
        ),
        Positioned(
          bottom: 0,
          child: Center(
            child: Container(
              height: size.height / 1.084,
              width: size.width / 1.044,
              decoration: BoxDecoration(
                  color: Color(0xff453464),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: size.height / 31.76, left: size.width / 1.157),
                  child: Icon(Icons.close_rounded,
                      size: size.height / 47.67,
                      color: Colors.white.withOpacity(0.5)),
                ),
                SizedBox(
                  height: size.height / 173.25,
                ),
                CircleAvatar(
                  radius: 144,
                  backgroundImage: AssetImage('assets/logo2.png'),
                ),
                SizedBox(
                  height: size.height / 34.59,
                ),
                Text('Получить PRO версию',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
                SizedBox(
                  height: size.height / 16.67,
                ),
                Table(
                  children: [
                    TableRow(children: [
                      Container(),
                      Center(
                          child: Text('Бесплатная',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                      Center(
                          child: Text('Pro',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)))
                    ])
                  ],
                ),
                SizedBox(
                  height: size.height / 37.05,
                ),
                Table(
                  border: TableBorder(
                      verticalInside: BorderSide(color: Colors.white)),
                  children: [
                    TableRow(children: [
                      Center(
                          child: Text('Число\n личности',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                      Center(
                          child: Text('1',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                      Center(
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          Color(0xFFffffff).withOpacity(0.15),
                                      blurRadius: 6.0,
                                      spreadRadius: 4.0,
                                      offset: Offset(
                                        0.0,
                                        3.0,
                                      ),
                                    ),
                                  ]),
                              child: FaIcon(FontAwesomeIcons.infinity,
                                  color: Colors.white)))
                    ]),
                    TableRow(children: [
                      SizedBox(
                        height: size.height / 41.68,
                      ),
                      SizedBox(
                        height: size.height / 41.68,
                      ),
                      SizedBox(
                        height: size.height / 41.68,
                      )
                    ]),
                    TableRow(children: [
                      SizedBox(
                        height: size.height / 41.68,
                        child: Center(
                            child: Text('Таро\n «Карты недели»',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400))),
                      ),
                      Center(
                          child: Text('1',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                      Center(
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          Color(0xFFffffff).withOpacity(0.15),
                                      blurRadius: 6.0,
                                      spreadRadius: 4.0,
                                      offset: Offset(
                                        0.0,
                                        3.0,
                                      ),
                                    ),
                                  ]),
                              child: FaIcon(FontAwesomeIcons.infinity,
                                  color: Colors.white)))
                    ]),
                    TableRow(children: [
                      SizedBox(
                        height: size.height / 41.68,
                      ),
                      SizedBox(
                        height: size.height / 41.68,
                      ),
                      SizedBox(
                        height: size.height / 41.68,
                      )
                    ]),
                    TableRow(children: [
                      Center(
                          child: Text('Таро\n «Желания»',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                      Center(
                          child: Text('Нет',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                      Center(
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          Color(0xFFffffff).withOpacity(0.15),
                                      blurRadius: 6.0,
                                      spreadRadius: 4.0,
                                      offset: Offset(
                                        0.0,
                                        3.0,
                                      ),
                                    ),
                                  ]),
                              child: FaIcon(FontAwesomeIcons.infinity,
                                  color: Colors.white)))
                    ]),
                    TableRow(children: [
                      SizedBox(
                        height: size.height / 41.68,
                      ),
                      SizedBox(
                        height: size.height / 41.68,
                      ),
                      SizedBox(
                        height: size.height / 41.68,
                      )
                    ]),
                    TableRow(children: [
                      Center(
                          child: Text('Таро\n «Карты недели»',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                      Center(
                          child: Text('Нет',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                      Center(
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          Color(0xFFffffff).withOpacity(0.15),
                                      blurRadius: 6.0,
                                      spreadRadius: 4.0,
                                      offset: Offset(
                                        0.0,
                                        3.0,
                                      ),
                                    ),
                                  ]),
                              child: FaIcon(FontAwesomeIcons.infinity,
                                  color: Colors.white)))
                    ]),
                    TableRow(children: [
                      SizedBox(
                        height: size.height / 41.68,
                      ),
                      SizedBox(
                        height: size.height / 41.68,
                      ),
                      SizedBox(
                        height: size.height / 41.68,
                      )
                    ]),
                    TableRow(children: [
                      Center(
                          child: Text('Совместимость',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                      Center(
                          child: Text('Нет',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                      Center(
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          Color(0xFFffffff).withOpacity(0.15),
                                      blurRadius: 6.0,
                                      spreadRadius: 4.0,
                                      offset: Offset(
                                        0.0,
                                        3.0,
                                      ),
                                    ),
                                  ]),
                              child: FaIcon(FontAwesomeIcons.infinity,
                                  color: Colors.white)))
                    ])
                  ],
                ),
              ]),
            ),
          ),
        ),
        Positioned(
          bottom: size.height / 8.55,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PurchasePage();
              }));
            },
            child: Container(
              height: size.height / 14.5,
              width: size.width / 1.59,
              child: Center(
                child: Text(
                  'Продолжить',
                  style: TextStyle(
                      color: Color(0xff453464),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
