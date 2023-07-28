import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/DImensions/dimensions.dart';
import 'package:recipe/widgets/SmallText.dart';

import 'ExplorePage.dart';

class CategoryPage extends StatelessWidget {
  final Category category;

  CategoryPage({ required this.category});

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
                image: AssetImage(iconImageMap[category.icon]!),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(Dimensions.radius15),
                bottomRight: Radius.circular(Dimensions.radius15),
              ),
            ),
          ),
          Text(
            category.name,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SmallText(text:category.description,color: Dimensions.paraColor,
          )
          // ...
        ],
      ),
    );
  }
}

