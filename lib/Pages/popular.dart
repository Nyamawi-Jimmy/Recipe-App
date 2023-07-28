import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/DImensions/dimensions.dart';

import 'ExplorePage.dart';

class PopularPage extends StatelessWidget {
  final Recipe recipe;

  PopularPage({required this.recipe});

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
                image: AssetImage(recipe.imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(Dimensions.radius15),
                bottomRight: Radius.circular(Dimensions.radius15),
              ),
            ),
          ),
          Text(
            recipe.title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          // ...
        ],
      ),
    );
  }
}

