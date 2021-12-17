import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tarot/ui/numerology.dart';
import 'package:tarot/ui/widgets/subscription.dart';
import 'package:tarot/utils/extension.dart';

class PurchasePage extends StatefulWidget {
  const PurchasePage({Key? key}) : super(key: key);

  @override
  _PurchasePageState createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
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
                  fit: BoxFit.fitHeight)),
        ),
        Positioned(
          bottom: 0,
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                height: size.height / 1.084,
                width: size.width / 1.044,
                decoration: BoxDecoration(
                    color: Color(0xff453464),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: SingleChildScrollView(
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
                    SvgPicture.asset('assets/Group 161.svg', fit: BoxFit.cover, height: size.height/4.69),
                    SizedBox(
                      height: size.height / 34.59,
                    ),
                    Text('Разблокировать все',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white)),
                    SizedBox(
                      height: size.height / 20.84,
                    ),
                    Subscription(size: size, duration: 'Подписка на неделю\n',amount: 'В неделю 600 ₽',),
                    SizedBox(height: size.height/41.68,),
                    Subscription(size: size, duration: 'Доступ на месяц\n',amount: 'Всего 2000 ₽',),
                    SizedBox(height: size.height/41.68,),
                    Subscription(size: size, duration: 'Доступ на месяц\n',amount: 'Всего 2000 ₽',),
                    SizedBox(height: size.height/41.68,),
                    GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Numerology();
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
                      SizedBox(height: size.height/41.68,),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

