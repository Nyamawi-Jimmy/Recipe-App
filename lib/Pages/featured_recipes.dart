import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/DImensions/dimensions.dart';
import 'package:recipe/widgets/BigText.dart';
import 'package:recipe/widgets/SmallText.dart';
import 'package:recipe/widgets/expandable_texts.dart';

import 'ExplorePage.dart';

class FeaturedPage extends StatelessWidget {
  final Recipe recipe;

  FeaturedPage({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Dimensions.height40 * 7,
              width: Dimensions.screenWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(recipe.imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(Dimensions.radius15),
                  bottomRight: Radius.circular(Dimensions.radius15),
                ),
              ),
            ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: Dimensions.height10,horizontal: Dimensions.width20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recipe.title, // Access the title from the 'recipe' object
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: Dimensions.height10,),
                SmallText(text:
                recipe.description,
                  color: Dimensions.paraColor,
                ),
                SizedBox(height: Dimensions.height10,),
                BigText(text: "Type:",color: Colors.black,),
                SizedBox(height: Dimensions.height10,),
                SmallText(text:recipe.type,color: Colors.blueGrey,size: 15,),
                SizedBox(height: Dimensions.height10,),
                BigText(text: "Level:",color: Colors.black,),
                SizedBox(height: Dimensions.height10,),
                SmallText(text:recipe.levels,color: Colors.blueGrey,size: 15,),
                SizedBox(height: Dimensions.height10,),
                BigText(text: "Ingredients:",color: Colors.black,),
                SizedBox(height: Dimensions.height10,),
                ExpandableTextWidget(text:recipe.ingredients,color:Colors.blueGrey,size: 15,),
                SizedBox(height: Dimensions.height10,),
                BigText(text: "Serves:",color: Colors.black,),
                SizedBox(height: Dimensions.height10,),
                SmallText(text:recipe.Serves,color: Colors.blueGrey,size: 15,),
                SizedBox(height: Dimensions.height10,),
                BigText(text: "Steps:",color: Colors.black,),
                SizedBox(height: Dimensions.height10,),
                ExpandableTextWidget(text: recipe.steps,)
              ],
            ),
          ),


          ],
        ),
      ),
    );
  }
}

