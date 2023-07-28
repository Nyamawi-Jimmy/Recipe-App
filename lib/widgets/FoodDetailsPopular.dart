
class Foods{
  final String title;
  final String type;
  final String Serves;
  final String levels;
  final String ingredients;
  final String steps;
  final String avatar;





  Foods(
     {
    required this.title,
       required  this.type,
       required this.Serves,
       required this.levels,
       required this.ingredients,
       required  this.steps,
       required  this.avatar,



     });
}

final foods=<Foods>[
  Foods(
    title: 'Ugali',
    type: 'Lunch',
    Serves: ' 4 people',
    levels: 'Beginner',
      ingredients:'2 cups maize flour (cornmeal), 4 cups water',
      steps:'Boil water in a pot.Gradually add maize flour to the boiling water while stirring continuously to avoid lumps.'
          'Keep stirring until the mixture thickens and forms a stiff dough-like consistency.Serve hot with your favorite Kenyan stew.',
    avatar: "assets/images/ugali.jpeg"


  ),
  Foods(
      title: 'Sukuma Wiki',
      type: 'Dinner',
      Serves: ' 4 people',
      levels: ' 4 people',
      ingredients:'1 bunch sukuma wiki (collard greens), chopped, 2 tomatoes, chopped,1 onion, sliced, 2 tablespoons vegetable oil, Salt and pepper to taste',
      steps:'Heat oil in a pan and sauté onions until translucent. Add tomatoes and cook until soft. Add sukuma wiki, salt, and pepper. Stir and cover the pan. Cook until tender.',
      avatar: "assets/images/sukuma.jpeg"


  ),
  Foods(
      title: 'Nyama Choma',
      type: 'supper',
      Serves: ' 4 people',
      levels: 'Intermediate',
      ingredients:'1 kg beef or goat meat, cubed. 2 tablespoons vegetable oil. 2 cloves garlic, minced. 1 teaspoon ginger, grated. Salt and pepper to taste',
      steps:'Marinate the meat with garlic, ginger, salt, and pepper for at least 1 hour. Grill the meat over an open flame or charcoal until well cooked. Serve hot with Kachumbari (Kenyan salad) and ugali.',
      avatar: "assets/images/nyama.jpeg"


  ),
  Foods(
      title: 'Chapati',
      type: 'Lunch',
      Serves: ' 4 people',
      levels: 'Intermediate',
      ingredients:'2 cups all-purpose flour. 1 cup warm water. 2 tablespoons vegetable oil. Salt to taste',
      steps:'In a bowl, mix flour, salt, and oil. Gradually add water and knead to form a smooth dough. Divide the dough into equal-sized balls and roll each ball into a thin circle.Heat a pan and cook the chapati on both sides until golden brown.',
      avatar: "assets/images/chapati.jpeg"


  ),
  Foods(
      title: 'Pilau',
      type: 'supper',
      Serves: ' 4 people',
      levels: 'Intermediate',
      ingredients:'2 cups basmati rice. 500g chicken or beef, cut into pieces. 2 onions, finely chopped. 2 tomatoes, chopped. 2 tablespoons pilau masala (spice mix). 4 cups chicken or beef broth. 3 tablespoons vegetable oil. Salt to taste',
      steps:'In a large pot, heat oil and sauté onions until golden brown. Add chicken or beef and cook until browned. Add tomatoes, pilau masala, and salt. Cook until the tomatoes are soft. Add rice and broth. Cover and simmer until the rice is cooked and the liquid is absorbed.',
      avatar: "assets/images/pilau.jpeg"


  ),
  Foods(
      title: 'Mandazi',
      type: 'snack',
      Serves: ' 4 people',
      levels: 'Intermediate',
      ingredients:'2 cups all-purpose flour. 1/2 cup sugar. 1 teaspoon baking powder. 1/4 teaspoon ground cardamom. 1/2 cup coconut milk. Vegetable oil for frying',
      steps:'In a bowl, mix flour, sugar, baking powder, and cardamom. Gradually add coconut milk and knead to form a soft dough.Roll out the dough and cut into triangular shapes. Heat oil in a pan and fry the mandazi until golden brown on both sides.',
      avatar: "assets/images/ugali.jpeg"


  ),

];