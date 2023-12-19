// ignore_for_file: must_be_immutable
import 'plant_finder.dart';
import 'package:flutter/material.dart';
import 'package:plant/plant_listview_screen.dart';
import 'plant_detail_screen.dart';

class PlantListScreen extends StatelessWidget {
  final String? name;

  PlantListScreen({required this.name});

  List<Plant> plants = [
    Plant(
      name: 'Snake Plant',
      imageUrl: 'assets/images/snake.jpg',
      careInstructions:
          'Water sparingly and Lucky bamboo likes indirect light, so position it on a west-facing window sill for best results. This plant is known for improving indoor air quality. Water your snake plant when the soil has completely dried out, then water deeply.',
      problemsGrowing:
          'If you see roots that are slimy or dark, snip them off with a nail scissor. If the roots grow mushy, cut off the plant stem above the roots',
      category: 'Indoor',
      isPoisonous: false,
      water: 'low',
      light: 'low',
      needsPruning: false,
      canBloom: false,
    ),
    Plant(
      name: 'Monstera Deliciosa',
      imageUrl: 'assets/images/monstera.PNG',
      careInstructions:
          'Bright, indirect light and water when the top inch of soil is dry. The Monstera is an easy-going plant and is generally pest-free. Water every 1-2 weeks, allowing soil to dry out between waterings.',
      problemsGrowing: 'Leaves turning brown and crispy at the edges',
      category: 'Outdoor',
      isPoisonous: false,
      water: 'low',
      light: 'bright',
      needsPruning: false,
      canBloom: true,
    ),
    Plant(
      name: 'ZZ Plant',
      imageUrl: 'assets/images/zz_plant.jpg',
      careInstructions:
          'Low to moderate light and allow the soil to dry out between waterings. Sometimes nicknamed the “Zanzibar Gem,” the ZZ grows smooth, naturally shiny leaflets that range from bright lime in their youth to an emerald green in their maturity. Water your ZZ Plant every 2-3 weeks, allowing the soil to dry out between waterings.',
      problemsGrowing:
          'In the rare event plant pests appear, treat them with weekly sprays of a natural pesticide like neem oil and regular wipe-downs of the plant.',
      category: 'Indoor',
      isPoisonous: false,
      water: 'low',
      light: 'low',
      needsPruning: false,
      canBloom: false,
    ),
    Plant(
      name: 'Fiddle Leaf Fig',
      imageUrl: 'assets/images/fiddle_leaf_fig.PNG',
      careInstructions:
          'Bright, indirect light and keep the soil consistently moist but not soggy. One surprising thing you can do to keep your fiddle leaf fig happy is to give it a shake every so often. The idea is that this mimics the wind and helps strengthen its trunk. it’s easy to check when he needs a drink. Poke your finger into the soil – if it feels dry at a depth of 2-3 inches, then it’s time to water.',
      problemsGrowing:
          'Try to avoid direct sunlight because his leaves can get sunburned.',
      category: 'Indoor',
      isPoisonous: false,
      water: 'medium',
      light: 'bright',
      needsPruning: true,
      canBloom: false,
    ),
    Plant(
      name: 'Spider Plant',
      imageUrl: 'assets/images/spider_plant.PNG',
      careInstructions:
          'Scientific name: Chlorophytum Comosum, Bright, indirect light and keep the soil evenly moist. During the summer, spider plants may produce tiny white flowers on long stems, as well as baby spider plants (offsets) called “pups.” The pups look like tiny spiders, hence the plant’s name!. Allow the soil to dry slightly between waterings.',
      problemsGrowing:
          'To get rid of the brown discs on the leaves, use your fingernail to scrape off the brown residue every few days.',
      category: 'Indoor',
      isPoisonous: false,
      water: 'medium',
      light: 'bright',
      needsPruning: false,
      canBloom: true,
    ),
    Plant(
      name: 'Lavender',
      imageUrl: 'assets/images/lavender.jpg',
      careInstructions:
          'Full sun and well-drained soil. This plant is suitable for outdoor gardens. Plants in containers do need regular water in summer, as they dry out quickly, and the roots have a limited amount of soil in which to search for moisture.',
      problemsGrowing:
          'Cut off spent blooms to encourage more to form. However, you can leave them in place towards the end of the flowering season as food for seed-eating birds such as goldfinches. Some types of lavender are not hardy and won’t survive the winter outside.',
      category: 'Outdoor',
      isPoisonous: false,
      water: 'high',
      light: 'full',
      needsPruning: true,
      canBloom: true,
    ),
    Plant(
      name: 'Rose',
      imageUrl: 'assets/images/rose.jpg',
      careInstructions:
          'Full sun and regular watering. Great for outdoor gardens and landscapes. Roses require at least 6 hours of full sun a day (preferably in the morning), a well-drained and nutrient-rich soil, and moderate amounts of water. Water should only be applied directly to the root zone, not to the leaf surface.',
      problemsGrowing:
          'Cleaning up potentially diseased rose leaves that have fallen from the plant. Fungal spores on fallen leaves can overwinter and return in the spring to infect the plant.',
      category: 'Outdoor',
      isPoisonous: false,
      water: 'high',
      light: 'full',
      needsPruning: true,
      canBloom: true,
    ),
    Plant(
      name: 'Pothos',
      imageUrl: 'assets/images/pothos.PNG',
      careInstructions:
          'Low to moderate light and allow the soil to dry out between waterings.',
      problemsGrowing:
          'The plant can occasionally become infested with mealybugs. Dab the insects away with a cotton swab soaked in rubbing alcohol. You can also use neem oil or insecticidal soap to control infestations.',
      category: 'Outdoor',
      isPoisonous: false,
      water: 'medium',
      light: 'low',
      needsPruning: false,
      canBloom: false,
    ),
    Plant(
      name: 'Peace Lily',
      imageUrl: 'assets/images/peace_lily.jpg',
      careInstructions:
          'Medium to low light and keep the soil consistently moist.',
      problemsGrowing:
          'Peace lilies can be split into multiple plants by dividing the clump, making sure each new plant has some good strong roots to grow from. Pippa may take some time to adjust to her new home, so don’t panic if she stops flowering for a while.',
      category: 'Indoor',
      isPoisonous: true,
      water: 'high',
      light: 'bright',
      needsPruning: false,
      canBloom: true,
    ),
    Plant(
      name: 'Aloe Vera',
      imageUrl: 'assets/images/aloe_vera.jpg',
      careInstructions:
          'Bright, indirect light and allow the soil to dry out between waterings.',
      problemsGrowing:
          'If you are looking for an easy-to-care-for, attractive and useful houseplant, Aloe vera is an excellent choice.',
      category: 'Outdoor',
      isPoisonous: false,
      water: 'medium',
      light: 'bright',
      needsPruning: false,
      canBloom: false,
    ),
    Plant(
      name: 'Rubber Plant',
      imageUrl: 'assets/images/rubber_plant.jpg',
      careInstructions:
          'Bright, indirect light and allow the soil to dry out between waterings.',
      problemsGrowing:
          'Rubber plants are fast growers, so make sure you check during the springtime if their roots are poking out of the nursery pot. If they are, it’s time to repot. During spring and summer, you can give rubber plants extra attention by treating them to liquid fertilizer once a month.',
      category: 'Indoor',
      isPoisonous: false,
      water: 'medium',
      light: 'bright',
      needsPruning: false,
      canBloom: false,
    ),
    Plant(
      name: 'Succulent (Echeveria)',
      imageUrl: 'assets/images/succulent.PNG',
      careInstructions:
          '"Succulent” refers to thick, fleshy plants that have evolved to store water to survive arid climates or tough soil conditions. Often the water is stored in the leaves, giving succulents their signature (and irresistibly cute) look, Bright light and allow the soil to dry out between waterings.',
      problemsGrowing:
          'Succulents are tough, but they still need a little love from you. Check them regularly for aphids, spider mites, and mealy bugs that will make a meal of your precious plants.',
      category: 'Outdoor',
      isPoisonous: false,
      water: 'medium',
      light: 'bright',
      needsPruning: false,
      canBloom: false,
    ),
    Plant(
      name: 'Lucky Bamboo',
      imageUrl: 'assets/images/lucky_bamboo.PNG',
      careInstructions:
          'Commonly cultivated houseplant that can be grown hydroponically or in soil. Low to moderate light and keep the roots submerged in water.',
      problemsGrowing:
          'Your lucky bamboo should be green, but if any part of the stem or leaves are yellow, this indicates your plant could be sick. Remove the yellow part of the stem or the leaves completely so it doesn’t spread to the rest of the plant.',
      category: 'Indoor',
      isPoisonous: false,
      water: 'high',
      light: 'low',
      needsPruning: false,
      canBloom: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'Welcome, $name',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/color.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Text(
                    ' "A beautiful plant is like having a friend around the house."',
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 60),
                  Text(
                    'Taking care of plants not only adds beauty to your surroundings but also promotes a healthier and happier lifestyle. Plants contribute to cleaner air, reduced stress, and improved overall well-being.',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.brown,
                        fontStyle: FontStyle.italic),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            // Wrap the Row in a Column
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlantListViewScreen(
                              plantCategory: 'Indoor',
                              plants: plants
                                  .where((plant) => plant.category == 'Indoor')
                                  .toList(),
                            ),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/outdoor.PNG'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Indoor',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlantListViewScreen(
                              plantCategory: 'Outdoor',
                              plants: plants
                                  .where((plant) => plant.category == 'Outdoor')
                                  .toList(),
                            ),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/indoor.PNG'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Outdoor',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // New Column for the third image
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlantFinder(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PlantFinder(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: 130,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.brown,
                                    // Set background color to brown
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Plant Finder',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors
                                            .white, // Set text color to white
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Your Plant Finder',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
