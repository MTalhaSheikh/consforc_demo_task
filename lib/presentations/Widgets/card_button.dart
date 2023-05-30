
import 'package:flutter/cupertino.dart';
import '../../data/text_styles.dart';

Widget classButton({
  classNumber,liveClass,
  icon
}){
  return Container(
    height: 35,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0XFFeaeaea),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 10.0,),
      child: Stack(
         children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Row(

                 children:  [
                    (icon),
                   Text(classNumber,style: AppTextStyles.cardButtonsNumber,),
                   Padding(
                     padding: const EdgeInsets.only(right: 7.0),
                     child: Text(liveClass,style: AppTextStyles.cardButtons,),
                   ),
                 ],
               ),
             ],
           ),
         ],
      ),
    ),
  );
}