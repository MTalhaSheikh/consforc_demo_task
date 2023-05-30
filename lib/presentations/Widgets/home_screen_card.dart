import 'package:flutter/material.dart';
import 'package:lawlms/presentations/Widgets/play_button.dart';

import '../../data/string_constants.dart';
import '../../data/text_styles.dart';
import 'card_button.dart';
class HomeCard extends StatefulWidget {
   const HomeCard({Key? key,
     required this.spokenEnglish,
     required this.spokenPrice,
     required this.spokenPriceNew,
     required this.classbutton1,
     required this.classbutton2,
     required this.classbutton3,
     required this.classbutton4,
     required this.image,
   }) : super(key: key);
  final spokenEnglish;
  final spokenPrice;
  final spokenPriceNew;
  final classbutton1;
  final classbutton2;
  final classbutton3;
  final classbutton4;
  final image;

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.18,
      width: MediaQuery.of(context).size.width*0.9,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey,),
        borderRadius: BorderRadius.circular(20),),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 225),
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.19,
              width: MediaQuery.of(context).size.width*0.32,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(widget.image,fit: BoxFit.cover),
              ),
            ),
          ),
          Column(
            children: [

              Padding(
                padding:  EdgeInsets.only(left: 15.0,top: 10),
                child: Row(
                  children:   [
                    Text(widget.spokenEnglish,style: AppTextStyles.courseName,),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(widget.spokenPrice,style: AppTextStyles.coursePrice,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(widget.spokenPriceNew,style: AppTextStyles.coursePriceNew,),
                    ),
                  ],

                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child:widget.classbutton1
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child:widget.classbutton2
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child:widget.classbutton3
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child:widget.classbutton4
                  )
                ],
              ),


            ],
          ),
          Padding(
            padding:  EdgeInsets.only(top: 80,left: 270),
            child: playButton( onTap: (){}),
          ),
        ],
      ),


    );
  }
}
