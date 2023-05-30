import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lawlms/data/text_styles.dart';
import 'package:lawlms/data/string_constants.dart';

import '../Widgets/card_button.dart';
import '../Widgets/home_screen_card.dart';
import '../Widgets/menu_button.dart';
import '../Widgets/play_button.dart';
import '../Widgets/search_bar.dart';
import '../Widgets/service_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

   List<TabItem> items = [
    const TabItem(
      icon: Icons.home_outlined,
      title: 'Home',
    ),
    const TabItem(
      icon: Icons.bookmark_border_outlined,
      title: 'Saved',
    ),
    const TabItem(
      icon: Icons.newspaper_outlined,
      title: 'Course',
    ),
    const TabItem(
      icon: Icons.video_collection_outlined,
      title: 'Library',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            child: Container(
              color: Colors.deepPurple,
               width: MediaQuery.of(context).size.width,
               height: 185,
               child: Padding(
                 padding: const EdgeInsets.only(left: 20,right: 20,top: 40,),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         const MenuButton(),
                         SizedBox(
                           width: MediaQuery.of(context).size.width*0.6,
                             height: 40,
                             child: RoundedSearchBar()),

                       ],
                     ),
                     const Padding(
                       padding: EdgeInsets.only(top: 30.0),
                       child: Text(AppConstants.welcomeMessage,style:AppTextStyles.userNameStyle),
                     ),
                     const Padding(
                       padding: EdgeInsets.only(top: 10.0),
                       child: Text(AppConstants.beEducated,style:AppTextStyles.userNormalText),
                     ),


                   ],
                 ),
               ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: ServiceSlider(),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 20.0,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(AppConstants.onSale,style: AppTextStyles.onSale,),
                Padding(
                  padding: EdgeInsets.only(left: 35.0),
                  child: Text(AppConstants.viewAll,style: AppTextStyles.viewAll,),
                ),
              ],
            ),
          ),
          SizedBox(
           height: 150,
            child:
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // Number of items in the list
              itemBuilder: (BuildContext context, int index) {
                // Build each item in the list
                return  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                    child:HomeCard(
                      spokenEnglish:AppConstants.spokenEnglish ,
                      spokenPrice:AppConstants.spokenPrice,
                      spokenPriceNew:AppConstants.spokenPriceNew ,
                      image: "assets/Images/first1.png",
                      classbutton1: classButton(classNumber: AppConstants.classNumber ,liveClass:AppConstants.liveClass ,icon: Icon(Icons.class_,color: Colors.deepPurple,)),
                      classbutton2: classButton(classNumber: AppConstants.classNumber ,liveClass:AppConstants.liveClass ,icon: Icon(Icons.class_,color: Colors.deepPurple)),
                      classbutton3:classButton(classNumber: AppConstants.classNumber ,liveClass:AppConstants.liveClass ,icon: Icon(Icons.class_,color: Colors.deepPurple)) ,
                      classbutton4: classButton(classNumber: AppConstants.classNumber ,liveClass:AppConstants.liveClass ,icon: Icon(Icons.class_,color: Colors.deepPurple)),
                    )
                );
              },
            ),
          ),
          const Padding(
            padding:  EdgeInsets.only(left: 20.0,right: 20,top: 20),
            child: Text(AppConstants.onPopular,style: AppTextStyles.onSale,),
          ),
          SizedBox(
            height: 180,
            child:
            ListView.builder(

              itemCount: 10, // Number of items in the list
              itemBuilder: (BuildContext context, int index) {
                // Build each item in the list
                return  Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 0),
                        child:HomeCard(
                          spokenEnglish:AppConstants.spokenEnglish ,
                          spokenPrice:AppConstants.spokenPrice,
                          spokenPriceNew:AppConstants.spokenPriceNew ,
                          image: "assets/Images/first1.png",
                          classbutton1: classButton(classNumber: AppConstants.classNumber ,liveClass:AppConstants.liveClass ,icon: Icon(Icons.class_,color: Colors.deepPurple,)),
                          classbutton2: classButton(classNumber: AppConstants.classNumber ,liveClass:AppConstants.liveClass ,icon: Icon(Icons.class_,color: Colors.deepPurple)),
                          classbutton3:classButton(classNumber: AppConstants.classNumber ,liveClass:AppConstants.liveClass ,icon: Icon(Icons.class_,color: Colors.deepPurple)) ,
                          classbutton4: classButton(classNumber: AppConstants.classNumber ,liveClass:AppConstants.liveClass ,icon: Icon(Icons.class_,color: Colors.deepPurple)),
                        )
                    ),
                    SizedBox(height: 8.0),
                  ],
                );

              },

            ),
          ),




        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding:const EdgeInsets.only(bottom: 10, right: 20, left: 20),
        child: BottomBarFloating(
          borderRadius: BorderRadius.circular(50),
          items: items,
          backgroundColor: Colors.deepPurple,
          color: Colors.white,
          colorSelected: Colors.orange,
          indexSelected: _currentIndex,
          paddingVertical: 10,
          onTap: (int index) => setState(() {
            _currentIndex = index;
          }),
        ),
      ),
    );
  }
}

