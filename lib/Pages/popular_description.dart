import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/DImensions/dimensions.dart';
import 'package:recipe/widgets/BigText.dart';

import '../widgets/FoodDetailsPopular.dart';
import '../widgets/SmallText.dart';
import '../widgets/expandable_texts.dart';

class PopularDescription extends StatelessWidget {
  final Foods food;

  PopularDescription({required this.food});

  @override
  Widget build(BuildContext context) {
    // Use the 'food' object to access its properties, e.g., 'food.title'
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        title: BigText(text: food.title+" Recipe"), // Display the title in the app bar
      ),
      body:SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Dimensions.height40*7,
                width:Dimensions.screenWidth,
                decoration: BoxDecoration(
                    image:DecorationImage(
                        image: AssetImage(
                            food.avatar
                        ),
                      fit: BoxFit.cover
                    ),
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(Dimensions.radius15),bottomRight:Radius.circular(Dimensions.radius15))
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: Dimensions.height10,horizontal: Dimensions.width10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Type:",color: Colors.black,),
                    SizedBox(height: Dimensions.height10,),
                    SmallText(text:food.type,color: Colors.blueGrey,size: 15,),
                    SizedBox(height: Dimensions.height10,),
                    BigText(text: "Level:",color: Colors.black,),
                    SizedBox(height: Dimensions.height10,),
                    SmallText(text:food.levels,color: Colors.blueGrey,size: 15,),
                    SizedBox(height: Dimensions.height10,),
                    BigText(text: "Ingredients:",color: Colors.black,),
                    SizedBox(height: Dimensions.height10,),
                    ExpandableTextWidget(text:food.ingredients,color:Colors.blueGrey,size: 15,),
                    SizedBox(height: Dimensions.height10,),
                    BigText(text: "Serves:",color: Colors.black,),
                    SizedBox(height: Dimensions.height10,),
                    SmallText(text:food.Serves,color: Colors.blueGrey,size: 15,),
                    SizedBox(height: Dimensions.height10,),
                    BigText(text: "Steps:",color: Colors.black,),
                    SizedBox(height: Dimensions.height10,),
                    ExpandableTextWidget(text: food.steps,)
                  ],
                ),
              )

            ],
    // Display the title in the body
          ),
      ),

    );
  }
}
