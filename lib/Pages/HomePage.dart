import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/Pages/popular_description.dart';
import 'package:recipe/Pages/reccommended_description.dart';
import 'package:recipe/widgets/BigText.dart';
import 'package:recipe/widgets/FoodDetailsPopular.dart';
import 'package:recipe/widgets/FoodDetailsRecomended.dart';

import '../DImensions/dimensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Dimensions.height25 * 5,
        backgroundColor: Colors.black,
        title: Container(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width10, vertical: Dimensions.height10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: Dimensions.radius30,
                backgroundColor: Colors.black,
               child: Icon(Icons.person,color:Colors.grey ,size: 30,),
              ),
              Text("Hello",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.font26,
                      color: Colors.white)),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width10, right: Dimensions.width10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Dimensions.height10),
                    Text("Popular Meals",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Dimensions.font20,
                            color: Colors.white)),
                    SizedBox(height: Dimensions.height10),
                    // Using LayoutBuilder to conditionally build the ListView
                    LayoutBuilder(
                      builder: (context, constraints) {
                        // Get the screen width
                        double screenWidth = constraints.maxWidth;

                        // Decide the cross-axis count based on screen width
                        int crossAxisCount;
                        double containerWidth;
                        if (screenWidth >= 1200) {
                          crossAxisCount = 6; // For large screen (PC)
                          containerWidth = screenWidth / crossAxisCount;
                        } else if (screenWidth >= 600) {
                          crossAxisCount = 4; // For medium screen (Tablet)
                          containerWidth = screenWidth / crossAxisCount;
                        } else {
                          crossAxisCount = 2; // For small screen (Phone)
                          containerWidth = screenWidth / crossAxisCount;
                        }
                        return Container(
                          height: Dimensions.height40 * 6,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: foods.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => PopularDescription(food: foods[index],
                                    ),
                                  )
                                  );
                                },
                                child: Stack(
                                  children: [
                                    FractionallySizedBox(
                                      alignment: Alignment.topCenter,
                                      heightFactor: 0.80, // 75% height for the image
                                      child: Container(
                                        margin: EdgeInsets.all(Dimensions.height10),
                                        width: Dimensions.width40 * 6,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(foods[index].avatar), // Adjust the image path
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.grey, // Set the background color
                                          borderRadius: BorderRadius.circular(Dimensions.radius15)
                                        ),
                                      ),
                                    ),
                                    SizedBox(height:Dimensions.width10),

                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        height: Dimensions.height40, // 25% height for the black container
                                        color: Colors.black,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Icons.star,color: Colors.yellow.shade800),
                                                  SizedBox(width:Dimensions.width8),
                                                  BigText(text: foods[index].title,color: Colors.white,size: 17,)
                                                ],
                                              )

                                            ],
                                          ),

                                      ),
                                    ),
                                  ],
                                ),
                              );


                            },
                          ),
                        );
                      },
                    ),
                    SizedBox(height: Dimensions.height10),
                    Text("Recommended Meals",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Dimensions.font20,
                            color: Colors.white)),
                    SizedBox(height: Dimensions.height10),
                    // Using LayoutBuilder to conditionally build the ListView
                    LayoutBuilder(
                      builder: (context, constraints) {
                        // Get the screen width
                        double screenWidth = constraints.maxWidth;

                        // Decide the cross-axis count based on screen width
                        int crossAxisCount;
                        double containerWidth;
                        if (screenWidth >= 1200) {
                          crossAxisCount = 6; // For large screen (PC)
                          containerWidth = screenWidth / crossAxisCount;
                        } else if (screenWidth >= 600) {
                          crossAxisCount = 4; // For medium screen (Tablet)
                          containerWidth = screenWidth / crossAxisCount;
                        } else {
                          crossAxisCount = 3; // For small screen (Phone)
                          containerWidth = screenWidth / crossAxisCount;
                        }
                        return Container(
                          height: Dimensions.height40 * 7,
                          child: ListView.builder(
                            itemCount: recofoods.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RecommendedDescription(food: recofoods[index],
                                        ),
                                      )
                                  );
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                                        color: Colors.grey.shade700, // Set the background color
                                      ),
                                    height: Dimensions.height25 * 4,
                                    margin: EdgeInsets.all(Dimensions.height10),
                                    width: double.maxFinite,
                                  ),

                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(Dimensions.height10),
                                          height: 101,
                                          width: Dimensions.width40*3,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(recofoods[index].avatar), // Adjust the image path
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.circular(Dimensions.radius15),
                                            color: Colors.grey,
                                          ),

                                        ),
                                        SizedBox(width:Dimensions.width10),
                                        Column(
                                          children: [
                                            Icon(Icons.star,color: Colors.yellow.shade800),
                                            SizedBox(height:Dimensions.width8),
                                            BigText(text: recofoods[index].title)
                                          ],
                                        )
                                      ],
                                    )
                                  ],

                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
