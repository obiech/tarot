import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tarot/ui/widgets/pageview_indicator.dart';
import 'package:tarot/ui/widgets/showDialog.dart';
import 'package:tarot/utils/extension.dart';

class MapsForWeek extends StatefulWidget {
  const MapsForWeek({Key? key}) : super(key: key);

  @override
  _MapsForWeekState createState() => _MapsForWeekState();
}

class _MapsForWeekState extends State<MapsForWeek> {
  ScrollController scrollController = ScrollController();
  final _currentPageNotifier = ValueNotifier<double>(0.0);
  int _currentPage = 0;
  int indexPage = 0;
  double widgetSize = 0;
  double initialPosition = 0;
  int itemCount = 60;

  @override
  void initState() {
    super.initState();

    // scrollController.addListener(() {
    //   _listener();
    // });
  }

  ///
  double getSize(
    double size,
  ) {
    double interval = size / (itemCount + 2);
    return widgetSize = interval * 3;
  }

  double getPosition(
    double size,
  ) {
    double interval = (size) / (itemCount + 2);
    initialPosition = interval * _currentPage;
    return initialPosition;
  }

  void _listener() {
    setState(() {
      // _currentPage = scrollController.position.;
      _currentPageNotifier.value = _currentPage.toDouble();
    });
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = ResponsiveUtil(context).size;

    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: size.height / 19.3,
        ),
        Expanded(
          flex: 9,
          child: GridView.count(
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            crossAxisCount: 2,
            childAspectRatio: 2.5,
            padding: EdgeInsets.symmetric(horizontal: size.width / 18.75),
            physics: BouncingScrollPhysics(),
            children: List.generate( itemCount, (index) {
              return GestureDetector(
                onTap: (){
                  showDialog(
                          barrierColor: Color(0xB2000000),
                            context: context,
                            builder:(context)=> DialogWidget());
                   
                },
                child: Image.asset(
                  'assets/card_back_png.png',
                  fit: BoxFit.fill,
                ),
              );
            }),
          ),
        ),
        Expanded(
          child: Padding(
            padding:
                EdgeInsets.only(left: (size.width - (size.width / 1.09)) / 2),
            child: PageViewIndicator(
              itemCount: itemCount,
              currentPosition: _currentPage,
              getPosition: getPosition(size.width / 1.09),
              getSize: getSize(size.width / 1.09),
            ),
          ),
        ),
        SizedBox(
          height: size.height / 20.84,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height / 14.5,
                width: size.width / 1.57,
                child: Center(
                  child: Text('Выбрать',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withOpacity(0.4))),
                ),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(14)),
              ),
              SizedBox(
                width: size.width / 46.87,
              ),
              Container(
                height: size.height / 14.5,
                width: size.width / 8.15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    ),
                child: Center(
                  child: SvgPicture.asset('assets/Group (2).svg', fit:BoxFit.fill),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height / 20.84,
        )
      ],
    );
  }
}
