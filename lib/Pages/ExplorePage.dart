
import 'package:flutter/material.dart';
import 'package:recipe/DImensions/dimensions.dart';
import 'package:recipe/Pages/popular.dart';
import 'package:recipe/widgets/BigText.dart';

import '../widgets/SmallText.dart';
import 'category_page.dart';
import 'featured_recipes.dart';

class ExploreScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Explore"),
        // Add any additional app bar customization as needed
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Featured Recipes
            _buildSectionTitle("Featured Recipes"),
            // Horizontal list of featured recipes
            Container(
              height: 200, // Adjust the height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: featuredRecipes.length,
                itemBuilder: (context, index) {
                  return _buildFeaturedRecipeCard(context,featuredRecipes[index]);
                },
              ),
            ),

            // Categories
            _buildSectionTitle("Categories"),
            // Grid of recipe categories
            GridView.count(
              crossAxisCount: 3,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(categories.length, (index) {
                return _buildCategoryCard(context,categories[index]);
              }),
            ),

            // Popular Recipes
            _buildSectionTitle("Popular Recipes"),
            // List of popular recipes
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: popularRecipes.length,
              itemBuilder: (context, index) {
                return _buildPopularRecipeCard(context,popularRecipes[index]);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildFeaturedRecipeCard(BuildContext context, Recipe recipe) {
    return GestureDetector(
      onTap: () {
        // Implement navigation to the featured recipe details screen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FeaturedPage(recipe: recipe), // Replace 'FeaturedPage()' with your actual page for the featured recipe details
          ),
        );
      },
      child: Card(
        child: Column(
          children: [
            Image.asset(recipe.imagePath, height: 120, width: 120, fit: BoxFit.cover),
            SizedBox(height: Dimensions.height10),
            BigText(text: recipe.title, color: Colors.black, size: 15),
          ],
        ),
      ),
    );
  }
  Widget _buildCategoryCard(BuildContext context, Category category) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryPage(category: category), // Replace 'FeaturedPage()' with your actual page for the featured recipe details
          ),
        );
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(category.icon),
            SizedBox(height: 8),
            Text(category.name),
          ],
        ),
      ),
    );
  }

  Widget _buildPopularRecipeCard(BuildContext context, Recipe recipe) {
    return GestureDetector(
      onTap: (){
        print("tapped");
        // Implement navigation to the featured recipe details screen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PopularPage(recipe: recipe), // Replace 'FeaturedPage()' with your actual page for the featured recipe details
          ),
        );
      },
      child: Card(
        child: ListTile(
          leading: Image.asset(recipe.imagePath, height: 60, width: 60, fit: BoxFit.cover),
          title: BigText(text:recipe.title,color: Colors.black,size: 15,),
          subtitle: SmallText(text:recipe.description,color: Dimensions.paraColor,),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            // Implement navigation to the recipe details screen
          },
        ),
      ),
    );
  }
}

class Recipe {
  final String title;
  final String description;
  final String imagePath;

  Recipe({required this.title, required this.description, required this.imagePath});
}

class Category {
  final String name;
  final String description;
  final IconData icon;

  Category({required this.name, required this.icon,required this.description, });
}
Map<IconData, String> iconImageMap = {
  Icons.soup_kitchen: "assets/images/soups.jpeg",
  Icons.cake: "assets/images/desserts.jpeg",
  Icons.local_pizza: "assets/images/pasta.jpeg",
  // Add more icon-image mappings as needed
};

// Sample data for demonstration purposes
List<Recipe> featuredRecipes = [
  Recipe(title: "Appetizers", description: "Small dishes served before a meal to stimulate the appetite.", imagePath: "assets/images/bhajia.jpeg"),
  Recipe(title: "Side Dishes", description: "Complementary dishes served alongside the main course.", imagePath: "assets/images/nyama.jpeg"),
  Recipe(title: "Soups and Stews", description: "Warm and comforting dishes made with broth, vegetables, and sometimes meat or seafood.", imagePath: "assets/images/pilau.jpeg"),

];

List<Category> categories = [
  Category(name: "Soups", icon: Icons.soup_kitchen, description: 'Refreshing drinks, including smoothies, juices, cocktails, and hot beverages.'),
  Category(name: "Desserts", icon: Icons.cake, description: 'Sweet treats like cakes, cookies, pies, ice cream, and more'),
  Category(name: "Pasta", icon: Icons.local_pizza, description: 'Recipes that exclude dairy products for those who are lactose intolerant or have dairy allergies.'),
];

List<Recipe> popularRecipes = [
  Recipe(title: "Beverages", description: "Refreshing drinks, including smoothies, juices, cocktails, and hot beverages.", imagePath: "assets/images/beverage.jpeg"),
  Recipe(title: "Dairy-Free", description: "Recipes that exclude dairy products for those who are lactose intolerant or have dairy allergies.", imagePath: "assets/images/dairy.jpeg"),
  Recipe(title: "Desserts", description: "Sweet treats like cakes, cookies, pies, ice cream, and more.", imagePath: "assets/images/desserts.jpeg"),

];
