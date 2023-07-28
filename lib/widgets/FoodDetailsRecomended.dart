
class RecoFoods{
  final String title;
  final String type;
  final String Serves;
  final String levels;
  final String ingredients;
  final String steps;
  final String avatar;





  RecoFoods(
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

final recofoods=<RecoFoods>[

  RecoFoods(
      title: 'Githeri',
      type: 'supper',
      Serves: ' 4 people',
      levels: 'Beginner',
      ingredients:'1 cup maize kernels. 1 cup beans (black-eyed peas). 1 onion, chopped. 2 tomatoes, chopped. 2 tablespoons vegetable oil. Salt and pepper to taste.  ',
      steps:'Soak maize and beans separately overnight. Boil them together until tender. Drain excess water.In a pan, sauté onions and tomatoes in oil until soft. Add boiled maize and beans. Cook for a few minutes. Season with salt and pepper.',
      avatar: "assets/images/githeri.jpeg"


  ),
  RecoFoods(
      title: 'Mokimu',
      type: 'Lunch',
      Serves: ' 4 people',
      levels: 'Intermediate',
      ingredients:'2 cups maize kernels.3 large potatoes, peeled and cubed. 1 cup pumpkin leaves (optional). 1 onion, chopped. 2 tomatoes, chopped. 2 tablespoons vegetable oil. Salt and pepper to taste ',
      steps:'Boil maize, green peas, and potatoes together until tender. Drain excess water.In a pan, sauté onions and tomatoes in oil until soft. Add boiled mixture and pumpkin leaves (if using). Mash and mix well. Season with salt and pepper.',
      avatar: "assets/images/mokimu.jpeg"


  ),
  RecoFoods(
      title: 'Bhajia',
      type: 'Breakfast',
      Serves: ' 4 people',
      levels: 'Intermediate',
      ingredients:'3 large potatoes, thinly sliced. 1 cup chickpea flour (besan). 1 tablespoon ginger-garlic paste. 1 teaspoon cumin seeds. 1 teaspoon turmeric powder. 1 tablespoon red chili powder. 1 tablespoon vegetable oil. Salt to taste',
      steps:'In a bowl, mix chickpea flour, ginger-garlic paste, cumin seeds, turmeric powder, red chili powder, and salt. Add water to the mixture to form a thick batter. Dip potato slices into the batter and deep fry until golden brown.',
      avatar: "assets/images/bhajia.jpeg"


  ),
  RecoFoods(
      title: 'Samosa',
      type: 'Breakfast',
      Serves: ' 4 people',
      levels: 'Intermediate',
      ingredients:'2 cups all-purpose flour. 2 tablespoons vegetable oil. 1 teaspoon cumin seeds. 1 cup minced meat (beef or chicken). 1 onion, finely chopped. 1 tablespoon ginger-garlic paste. 1 teaspoon ground coriander. 1 teaspoon garam masala. 1/2 cup frozen peas. Vegetable oil for frying. Salt and pepper to taste',
      steps:'In a bowl, mix flour, vegetable oil, cumin seeds, and salt. Knead to form a stiff dough. Heat vegetable oil in a pan and sauté onions until translucent. Add minced meat, ginger-garlic paste, ground coriander, garam masala, peas, salt, and pepper. Cook until meat is cooked through. Roll out the dough and cut into circles. Fold each circle into a cone shape and fill with the meat mixture.',
      avatar: "assets/images/samosa.jpeg"


  ),
  RecoFoods(
      title: 'Matoke',
      type: 'Supper',
      Serves: ' 4 people',
      levels: 'Intermediate',
      ingredients:'4-5 ripe plantains, peeled and sliced. 1 onion, chopped. 2 tomatoes, chopped. 1 tablespoon curry powder. 1 tablespoon vegetable oil. 1 cup coconut milk. Salt to taste',
      steps:'In a pan, sauté onions and tomatoes in oil until soft.Add sliced plantains and curry powder. Cook for a few minutes. Pour coconut milk and let it simmer until plantains are tender. Season with salt.',
      avatar: "assets/images/matoke.jpeg"


  ),

];