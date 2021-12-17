import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tarot/ui/personality_number.dart';
import 'package:tarot/ui/profile.dart';
import 'package:tarot/ui/widgets/glassmorphism.dart';
import 'package:tarot/ui/widgets/lock.dart';
import 'package:tarot/utils/extension.dart';

class Numerology extends StatefulWidget {
  const Numerology({Key? key}) : super(key: key);

  @override
  _NumerologyState createState() => _NumerologyState();
}

class _NumerologyState extends State<Numerology> {
  @override
  Widget build(BuildContext context) {
    Size size = ResponsiveUtil(context).size;
    return Stack(children: [
      Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/background.png',
            ),
            fit: BoxFit.fitHeight,
          ),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff191539), Color(0xff9067B0)]),
        ),
      ),
      SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: Icon(Icons.arrow_back_ios_new, color: Colors.white),
              title: Text('Нумерология',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w700)),
              centerTitle: true,
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: size.width / 20.83, top:size.height/45.68),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Profile();
                      }));
                    },
                    child:
                        FaIcon(FontAwesomeIcons.userAlt, color: Colors.white),
                  ),
                )
              ]),
          body: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              SizedBox(
                height: size.height / 20.21,
              ),
              Padding(
            padding: EdgeInsets.only(left: size.width / 23.4),
                child: Text(
                  'Ваши жизненные числа',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: size.height / 27.79),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: size.width / 23.4),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GlassMorphism(
                      sigmaX: 10,
                      sigmaY: 10,
                      clip: Clip.antiAlias,
                      radius: 30,
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PersonalityNumber();
                            })),
                            child: Container(
                              width: size.width / 1.8,
                              height: size.height / 3.625,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  border: Border.all(
                                      color: Colors.white.withOpacity(0.6))),
                              child: Column(
                                children: [
                                  SizedBox(height: size.height / 19.68),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(26),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFFffffff)
                                                .withOpacity(0.09),
                                            blurRadius: 9.0,
                                            spreadRadius: 1.0,
                                            offset: Offset(
                                              0.0,
                                              0.0,
                                            ),
                                          ),
                                        ]),
                                    child: Text(
                                      '5',
                                      style: TextStyle(
                                          fontSize: 62,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(height: size.height / 19.79),
                                  RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                          text: 'Число личности\n',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                          children: [
                                            TextSpan(
                                              text: 'Душа',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white
                                                      .withOpacity(0.5)),
                                            )
                                          ]))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: size.width / 20.79),
                    GlassMorphism(
                      sigmaX: 10,
                      sigmaY: 10,
                      child: Stack(
                        children: [
                          Container(
                            width: size.width / 1.8,
                            height: size.height / 3.625,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.2))),
                            child: Column(
                              children: [
                                SizedBox(height: size.height / 19.68),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(26),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFFffffff)
                                              .withOpacity(0.09),
                                          blurRadius: 9.0,
                                          spreadRadius: 1.0,
                                          offset: Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        ),
                                      ]),
                                  child: Text(
                                    '4',
                                    style: TextStyle(
                                        fontSize: 62,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white.withOpacity(0.4)),
                                  ),
                                ),
                                SizedBox(height: size.height / 19.79),
                                RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: 'Число судьбы\n',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white
                                                .withOpacity(0.4)),
                                        children: [
                                          TextSpan(
                                            text: 'Жизненный путь',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white
                                                    .withOpacity(0.2)),
                                          )
                                        ]))
                              ],
                            ),
                          ),
                         Lock(size: size,top: ((size.height / 3.625) / 2) -
                                (size.height / 13.89) / 2,
                            left: ((size.width / 1.8) / 2) -
                                (size.width / 7.81) / 2,) ],
                      ),
                    ),
                    SizedBox(width: size.width / 20.79),
                    GlassMorphism(
                      sigmaX: 10,
                      sigmaY: 10,
                      child: Stack(
                        children: [
                          Container(
                            width: size.width / 1.8,
                            height: size.height / 3.625,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.2))),
                            child: Column(
                              children: [
                                SizedBox(height: size.height / 19.68),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(26),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFFffffff)
                                              .withOpacity(0.09),
                                          blurRadius: 9.0,
                                          spreadRadius: 1.0,
                                          offset: Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        ),
                                      ]),
                                  child: Text(
                                    '4',
                                    style: TextStyle(
                                        fontSize: 62,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white.withOpacity(0.4)),
                                  ),
                                ),
                                SizedBox(height: size.height / 19.79),
                                RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: 'Число судьбы\n',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white
                                                .withOpacity(0.4)),
                                        children: [
                                          TextSpan(
                                            text: 'Жизненный путь',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white
                                                    .withOpacity(0.2)),
                                          )
                                        ]))
                              ],
                            ),
                          ),
                        Lock(size: size,top: ((size.height / 3.625) / 2) -
                                (size.height / 13.89) / 2,
                            left: ((size.width / 1.8) / 2) -
                                (size.width / 7.81) / 2,),
                         ] ),
                    ),
                    SizedBox(height: size.height / 27.79),
                  ],
                ),
              ),
              SizedBox(height: size.height / 16.67),
              Padding(
            padding: EdgeInsets.only(left: size.width / 23.4),
                child: Text(
                  'Ваша совместимость',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: size.height / 41.68),
              Padding(
            padding: EdgeInsets.only(left: size.width / 23.4),
                child: GlassMorphism(
                  sigmaX: 10,
                  sigmaY: 10,
                  child: Stack(
                    children: [
                      Container(
                        width: size.width / 1.09,
                        height: size.height / 8.337,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white.withOpacity(0.2)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: size.width / 11.71),
                              child: Text(
                                'Совместимость',
                                style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.4)),
                              ),
                            ),
                            Padding(
                                padding:
                                    EdgeInsets.only(right: size.width / 11.78),
                                child: SvgPicture.asset(
                                  'assets/Group (5).svg',
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                      Lock(
                        top: ((size.height / 8.337) / 2) -
                            (size.height / 13.89) / 2,
                        left: ((size.width / 1.09) / 2) - (size.width / 7.81) / 2,
               
                        size: size,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}

