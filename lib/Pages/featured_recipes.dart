import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/DImensions/dimensions.dart';
import 'package:recipe/widgets/SmallText.dart';

import 'ExplorePage.dart';

class FeaturedPage extends StatelessWidget {
  final Recipe recipe;

  FeaturedPage({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Dimensions.height40 * 7,
            width: Dimensions.screenWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(recipe.imagePath), // Access the image path from the 'recipe' object
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(Dimensions.radius15),
                bottomRight: Radius.circular(Dimensions.radius15),
              ),
            ),
          ),
          // Use the 'recipe' object to access its properties, e.g., 'recipe.title'
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

          // ...
        ],
      ),
    );
  }
}

