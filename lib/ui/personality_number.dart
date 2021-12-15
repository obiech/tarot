import 'package:flutter/material.dart';
import 'package:tarot/ui/widgets/glassmorphism.dart';
import 'package:tarot/utils/extension.dart';

const String text =
    'Число личности 5 указывает на то, что основной потребностью человека является признание, восхищение, преклонение перед ним, его талантами, его образом жизни. Этой цели служат все его внешние проявления, начиная с раннего детства, и до конца дней. Разумеется, это – явная зависимость. Но, однажды вкусив славы, пусть даже в самом ограниченном масштабе, человек уже не может остановиться.';
const String Text2 = "Все, что он может получить благодаря своим способностям, все возможности, которыми одаривает его судьба, а так же сугубо интимная составляющая его жизни – все конвертируется именно в эту валюту, выставляется напоказ.";
class PersonalityNumber extends StatefulWidget {
  const PersonalityNumber({Key? key}) : super(key: key);

  @override
  _PersonalityNumberState createState() => _PersonalityNumberState();
}

class _PersonalityNumberState extends State<PersonalityNumber> {
  @override
  Widget build(BuildContext context) {
    Size size = ResponsiveUtil(context).size;

    return Stack(
      children: [
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
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading:  IconButton(icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),onPressed: ()=> Navigator.pop(context),),
            title: Text('Число личности',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700)),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: size.height/16.67,),
                Container(
                  decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFffffff).withOpacity(0.12),
                              blurRadius: 10.0,
                              spreadRadius: 3.0,
                              offset: Offset(
                                0.0,
                                3.0,
                              ),
                            ),
                          ]),
                  child: Text('5', style: TextStyle(
                      color: Colors.white,
                      fontSize: 62,
                      fontWeight: FontWeight.w400)),
                ),
                SizedBox(height: size.height/41.68,),
                Text('Душа', style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400)),
                SizedBox(height: size.height/19.67,),
                Center(
                  child: GlassMorphism(sigmaX: 190,sigmaY: 190,
                    child: Container(
                      width: size.width/1.09,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Color(0x80111111)
                      ),
                      padding: EdgeInsets.only(left: size.width/15.6,right: size.width/15.6,top: size.height/27.79, bottom:  size.height/27.79),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Характер', style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700)),
                       SizedBox(height: size.height/166.7,),
                          Text(text, style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
                      SizedBox(height: size.height/41.67,),
                          Text('Вкусы', style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700)),
                        SizedBox(height: size.height/166.7,),
                          Text(Text2, style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 14,
                        fontWeight: FontWeight.w400))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
