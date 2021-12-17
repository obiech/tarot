import 'package:flutter/material.dart';
import 'package:tarot/ui/widgets/glassmorphism.dart';
import 'package:tarot/utils/extension.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = ResponsiveUtil(context).size;

    return  GlassMorphism(
      sigmaX: 4,
      sigmaY: 4,
      child: AlertDialog(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30),),side: BorderSide(color:Colors.white.withOpacity(0.8)),),
        title: Align(alignment: Alignment.centerRight, child: GestureDetector(onTap:(){Navigator.pop(context);},child: Icon(Icons.clear, color: Colors.white,))),
        backgroundColor: Colors.white.withOpacity(0.2),
        content: Container(
          height: size.height/ 2.15,
          width: size.width/1.09,
          color: Colors.transparent,
          child: Column(
            children: [
              SizedBox(height: size.height/13.07,),
              Text('Карта дня\n\n',style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),),
              Text('''Перед вами будет колода 78 карт, вам необходимо выбрать одну карту из 78. 

После чего вам откроется толкование выбранной карты на сегодняшний день.''',style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400)),
            ],
          ),
        )
      ),
    );
  }
}
