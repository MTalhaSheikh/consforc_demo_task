import 'package:flutter/material.dart';

import '../../data/text_styles.dart';
class ServiceSlider extends StatefulWidget {
  const ServiceSlider({Key? key}) : super(key: key);

  @override
  State<ServiceSlider> createState() => _ServiceSliderState();
}

class _ServiceSliderState extends State<ServiceSlider> {
  int selectedTab = 0;
  String selectedTabVal = "";
  final List<String> categoriesList = [
    " All   ",
    "Design",
    "Communication",
    "Development",
    "Art work",
    "Healthcare",
    "Real estate",
    "Clothing",
    "Automotive services",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,

      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                  left: index == 0 ? 20 : 12.0,
                  right:
                  index == categoriesList.length - 1 ? 33 : 0,
                  top: 6.0,
                  bottom: 6.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTab = index;
                    selectedTabVal = categoriesList[index];
                    print(selectedTabVal);
                  });
                },
                child: Container(
                  // height: 32,
                  decoration: BoxDecoration(
                      color: selectedTab == index?Colors.deepPurple:Colors.white,
                      boxShadow: kElevationToShadow[1],
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                        "   ${categoriesList[index]}   ",
                        style: AppTextStyles.titleStyle.copyWith(
                            fontSize: 13,
                            color: selectedTab == index
                                ? Colors.white
                                : Colors.indigo),
                      )),
                ),
              ),
            );
          }),
    );
  }
}
