
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSectionTitle("Featured Recipes"),
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
            _buildSectionTitle("Popular Recipes"),
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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FeaturedPage(recipe: recipe),
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
            builder: (context) => CategoryPage(category: category),
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
  Widget _buildPopularRecipeCard(BuildContext context, Popular popular) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          leading: Image.asset(popular.imagePath, height: 60, width: 60, fit: BoxFit.cover),
          title: BigText(text:popular.title,color: Colors.black,size: 15,),
          subtitle: SmallText(text:popular.description,color: Dimensions.paraColor,),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            print("tapped");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PopularPage(popular: popular),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Recipe {
  final String title;
  final String description;
  final String ingredients;
  final String steps;
  final String type;
  final String levels;
  final String Serves;
  final String imagePath;


  Recipe({required this.title, required this.description, required this.imagePath,required this.ingredients, required this.steps,required this.levels,required this.Serves,required this.type });
}
class Popular{
  final String title;
  final String description;
  final String ingredients;
  final String steps;
  final String type;
  final String levels;
  final String Serves;
  final String imagePath;

  Popular({required this.title, required this.description, required this.imagePath,required this.ingredients, required this.steps,required this.levels,required this.Serves,required this.type });
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
};

List<Recipe> featuredRecipes = [
  Recipe(title: "Appetizers", description: "Small dishes served before a meal to stimulate the appetite.",
    imagePath: "assets/images/bhajia.jpeg",
    ingredients:'3 large potatoes, thinly sliced. 1 cup chickpea flour (besan). 1 tablespoon ginger-garlic paste. 1 teaspoon cumin seeds. 1 teaspoon turmeric powder. 1 tablespoon red chili powder. 1 tablespoon vegetable oil. Salt to taste',
    steps:'In a bowl, mix chickpea flour, ginger-garlic paste, cumin seeds, turmeric powder, red chili powder, and salt. Add water to the mixture to form a thick batter. Dip potato slices into the batter and deep fry until golden brown.',
    type: "Breakfast",
    levels: "Intermediate",
    Serves: '5 People'

  ),
  Recipe(title: "Side Dishes", description: "Complementary dishes served alongside the main course.",
      imagePath: "assets/images/nyama.jpeg",
    ingredients:'1 kg beef or goat meat, cubed. 2 tablespoons vegetable oil. 2 cloves garlic, minced. 1 teaspoon ginger, grated. Salt and pepper to taste',
    steps:'Marinate the meat with garlic, ginger, salt, and pepper for at least 1 hour. Grill the meat over an open flame or charcoal until well cooked. Serve hot with Kachumbari (Kenyan salad) and ugali.',
      type: "Lunch",
      levels: "Intermediate",
      Serves: '5 People'
  ),
  Recipe(title: "Main Course", description: "Warm and comforting dishes made with broth, vegetables, and sometimes meat or seafood.",
      imagePath: "assets/images/pilau.jpeg",
    ingredients:'2 cups basmati rice. 500g chicken or beef, cut into pieces. 2 onions, finely chopped. 2 tomatoes, chopped. 2 tablespoons pilau masala (spice mix). 4 cups chicken or beef broth. 3 tablespoons vegetable oil. Salt to taste',
    steps:'In a large pot, heat oil and sauté onions until golden brown. Add chicken or beef and cook until browned. Add tomatoes, pilau masala, and salt. Cook until the tomatoes are soft. Add rice and broth. Cover and simmer until the rice is cooked and the liquid is absorbed.',
      type: "Supper",
      levels: "Intermediate",
      Serves: '6 People'
  ),

];

List<Category> categories = [
  Category(name: "Soups", icon: Icons.soup_kitchen, description: 'Refreshing drinks, including smoothies, juices, cocktails, and hot beverages.'),
  Category(name: "Desserts", icon: Icons.cake, description: 'Sweet treats like cakes, cookies, pies, ice cream, and more'),
  Category(name: "Pasta", icon: Icons.local_pizza, description: 'Recipes that exclude dairy products for those who are lactose intolerant or have dairy allergies.'),
];

List<Popular> popularRecipes = [
  Popular(title: "Matoke",
      description: "Small dish that serves as a main course",
      imagePath: "assets/images/matoke.jpeg",
      ingredients:'4-5 ripe plantains, peeled and sliced. 1 onion, chopped. 2 tomatoes, chopped. 1 tablespoon curry powder. 1 tablespoon vegetable oil. 1 cup coconut milk. Salt to taste',
      steps:'In a pan, sauté onions and tomatoes in oil until soft.Add sliced plantains and curry powder. Cook for a few minutes. Pour coconut milk and let it simmer until plantains are tender. Season with salt.',
      type: "Lunch",
      levels: "Beginner",
      Serves: '5 People'

  ),
  Popular(title: "Chapati",
      description: "A small snack that can be served as a breakfast",
      imagePath: "assets/images/chapati.jpeg",
      ingredients:'2 cups all-purpose flour. 1 cup warm water. 2 tablespoons vegetable oil. Salt to taste',
      steps:'In a bowl, mix flour, salt, and oil. Gradually add water and knead to form a smooth dough. Divide the dough into equal-sized balls and roll each ball into a thin circle.Heat a pan and cook the chapati on both sides until golden brown.',
      type: "Snack",
      levels: "Intermediate",
      Serves: '5 People'
  ),
  Popular(title: "Githeri",
      description: "Warm and comforting dishes made with broth, vegetables, and sometimes meat or seafood.",
      imagePath: "assets/images/githeri.jpeg",
      ingredients:'1 cup maize kernels. 1 cup beans (black-eyed peas). 1 onion, chopped. 2 tomatoes, chopped. 2 tablespoons vegetable oil. Salt and pepper to taste.  ',
      steps:'Soak maize and beans separately overnight. Boil them together until tender. Drain excess water.In a pan, sauté onions and tomatoes in oil until soft. Add boiled maize and beans. Cook for a few minutes. Season with salt and pepper.',
      type: "Supper",
      levels: "Intermediate",
      Serves: '6 People'
  ),
];
