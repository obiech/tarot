import 'package:flutter/material.dart';
import 'package:tarot/ui/widgets/cardOfDay.dart';
import 'package:tarot/ui/widgets/glassmorphism.dart';
import 'package:tarot/ui/widgets/mapsForWeek.dart';
import 'package:tarot/ui/widgets/wish.dart';
import 'package:tarot/utils/extension.dart';

class Tapo extends StatefulWidget {
  const Tapo({Key? key}) : super(key: key);

  @override
  _TapoState createState() => _TapoState();
}

class _TapoState extends State<Tapo> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
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
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                title: Text('Tapo',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700)),
                centerTitle: true,
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: size.width / 25.83),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.info_outline_rounded,
                          color: Colors.white.withOpacity(0.4)),
                    ),
                  )
                ]),
            body: Column(
              children: [
                SizedBox(height: 26.6,),
                GlassMorphism(sigmaX: 10,sigmaY: 10,
                  child: Container(
                    height: size.height/16.6,
                    width: size.width/1.09,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: TabBar(  
                      indicatorPadding: EdgeInsets.all(4),
                      controller: _tabController,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color:Colors.white.withOpacity(0.3),
                      ),
                      labelColor: Colors.white,
                      unselectedLabelStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),
                      physics: BouncingScrollPhysics(),
                    unselectedLabelColor: Colors.white,
                    tabs: [
                      Tab(
                        text: 'Желание',
                      ),
                
                      Tab(
                        text: 'Карта дня',
                      ),
                      Tab(
                        text: 'Карта недели',
                      ),
                    ]),
                  ),
                ),
                Expanded(child: 
                TabBarView(
                  physics: BouncingScrollPhysics(),
                  controller: _tabController,
                  children: [
                  
                  Wish(),
                    CardOfTheDay(),
                    MapsForWeek(),
                ]))
              ],
            ),
          ),
        )
      ],
    );
  }
}


