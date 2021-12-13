import 'package:flutter/material.dart';
import 'package:tarot/ui/welcome_screen.dart';
import 'package:tarot/utils/extension.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    nextPage();
  }

  Future<void> nextPage() async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return WelcomeScreen();
    }));
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
                      colors: [Color(0xff191539), Color(0xff9067B0)]))),
          Center(
              child: Image.asset(
            'assets/background.png',
            fit: BoxFit.fill,
          )),
          Center(child: Image.asset('assets/splash.png')),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: size.height / 9.211),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFffffff).withOpacity(0.12),
                            blurRadius: 6.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                              0.0,
                              3.0,
                            ),
                          ),
                        ]),
                    child: Text('Stella Numeris',
                        style: TextStyle(fontSize: 26, color: Colors.white))),
              ))
        ],
      ),
    );
  }
}
