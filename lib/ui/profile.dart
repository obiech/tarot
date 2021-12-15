import 'package:flutter/material.dart';
import 'package:tarot/ui/widgets/glassmorphism.dart';
import 'package:tarot/utils/extension.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _dateController = TextEditingController();

  bool isMale = false;
  bool isFirstTime = true;

  @override
  void initState() {
    super.initState();
    isFirstTime = true;
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _dateController.dispose();
  }

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
            leading: IconButton(icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),onPressed: ()=> Navigator.pop(context),),
            title: Text('Профиль',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700)),
            centerTitle: true,
          ),
          body: Center(
            child: GlassMorphism(
              sigmaX: 190,
              sigmaY: 190,
              child: Container(
                height: size.height / 1.62,
                width: size.width / 1.09,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color(0x80111111)),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height / 18.5,
                      ),
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
                            controller: _nameController,
                            decoration: InputDecoration(
                              fillColor: Colors.transparent,
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
                        height: size.height / 41.68,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width / 15.6),
                        child: Text('Дата рождения',
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
                            controller: _dateController,
                            decoration: InputDecoration(
                              fillColor: Colors.transparent,
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
                        height: size.height / 41.68,
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
                                        setState(() {});
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
                                        setState(() {});
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
                      ),
                      SizedBox(
                        height: size.height / 41.68,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width / 15.6),
                        child: Text('Время отправки ежедневного гороскопа',
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  padding: EdgeInsets.only(left: 20),
                                  height: size.height / 13.896,
                                  width: size.width / 1.55,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(14)),
                                      border: Border.all(
                                          color:
                                              Colors.white.withOpacity(0.4))),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        TimeOfDay.now()
                                            .format(context)
                                            .toString(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ))),
                              Container(
                                  height: size.height / 13.896,
                                  width: size.width / 5.8,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(14)),
                                      border: Border.all(
                                          color:
                                              Colors.white.withOpacity(0.4))),
                                  child: Icon(
                                    Icons.alarm_off_sharp,
                                    color: Colors.white,
                                  )),
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
