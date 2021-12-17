import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarot/ui/widgets/pageview_indicator.dart';
import 'package:tarot/ui/widgets/showDialog.dart';
import 'package:tarot/utils/extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Wish extends StatefulWidget {
  const Wish({Key? key}) : super(key: key);

  @override
  _WishState createState() => _WishState();
}

class _WishState extends State<Wish> {
  PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.45);
  final _currentPageNotifier = ValueNotifier<double>(0.0);
  int _currentPage = 0;
  int indexPage = 0;
  double widgetSize = 0;
  double initialPosition = 0;
  int itemCount = 12;

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      _listener();
    });
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
      _currentPage = _pageController.page!.ceil();
      _currentPageNotifier.value = _currentPage.toDouble();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = ResponsiveUtil(context).size;

    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SizedBox(
        //   height: size.height / 10,
        // ),
        Expanded(
          flex: 5,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            itemCount: itemCount,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1),
                  child: Transform.scale(
                    scale: index == _currentPage ? 1 : 1,
                    child: GestureDetector(
                      onTap: () {
                      showDialog(
                          barrierColor: Color(0xB2000000),
                            context: context,
                            builder:(context)=> DialogWidget());
                      },
                      child: AnimatedContainer(
                          duration: Duration(milliseconds: 250),
                          color: Colors.transparent,
                          height: index == _currentPage
                              ? size.height / 2.80
                              : size.height / 3.789,
                          width: size.width / 2.53,
                          child: Image.asset('assets/card_back_png.png',fit:BoxFit.fill,)),
                    ),
                  ),
                ),
              );
            },
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
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(14)),
                child:Center(
                  child: SvgPicture.asset('assets/Group (2).svg', fit: BoxFit.fill,color: Colors.white,),
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
