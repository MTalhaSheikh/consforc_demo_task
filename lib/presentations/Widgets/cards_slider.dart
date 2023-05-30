// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
//
// import '../../string_constants.dart';
// import '../text_styles.dart';
// import 'card_button.dart';
// import 'home_screen_card.dart';
// class CardsSlider extends StatefulWidget {
//   const CardsSlider({Key? key}) : super(key: key);
//
//   @override
//   State<CardsSlider> createState() => _CardsSliderState();
// }
//
// class _CardsSliderState extends State<CardsSlider> {
//   int selectedTab = 0;
//   String selectedTabVal = "";
//   final List<Widget> categoriesList = [
//
//
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 45,
//
//       child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: categoriesList.length,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: EdgeInsets.only(
//                   left: index == 0 ? 20 : 12.0,
//                   right:
//                   index == categoriesList.length - 1 ? 33 : 0,
//                   top: 6.0,
//                   bottom: 6.0),
//               child: GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     selectedTab = index;
//                     selectedTabVal = categoriesList[index];
//                     print(selectedTabVal);
//                   });
//                 },
//                 child: HomeCard(
//                   spokenEnglish:AppConstants.spokenEnglish ,
//                   spokenPrice:AppConstants.spokenPrice,
//                   spokenPriceNew:AppConstants.spokenPriceNew ,
//                   classbutton1: classButton(classNumber: AppConstants.classNumber ,liveClass:AppConstants.liveClass ,icon: const Icon(Icons.class_,color: Colors.deepPurple,)),
//                   classbutton2: classButton(classNumber: AppConstants.classNumber ,liveClass:AppConstants.liveClass ,icon: const Icon(Icons.class_,color: Colors.deepPurple)),
//                   classbutton3:classButton(classNumber: AppConstants.classNumber ,liveClass:AppConstants.liveClass ,icon: const Icon(Icons.class_,color: Colors.deepPurple)) ,
//                   classbutton4: classButton(classNumber: AppConstants.classNumber ,liveClass:AppConstants.liveClass ,icon: const Icon(Icons.class_,color: Colors.deepPurple)),
//                 ),
//               ),
//             );
//           }),
//     );
//   }
// }
