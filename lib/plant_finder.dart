import 'package:flutter/material.dart';
import 'plant_detail_screen.dart';
import 'plant_list_screen.dart';

class PlantFinder extends StatefulWidget {
  @override
  _PlantFinderState createState() => _PlantFinderState();
}

class _PlantFinderState extends State<PlantFinder> {
  String headerText = 'Find Your Right Plant';
  String lightCondition = '';
  String wateringFrequency = '';
  bool isPoisonous = false;
  bool needsPruning = false;
  bool canBloom = false;
  List<Plant> plants = PlantListScreen(name: n).plants;

  static get n => null;

  List<Plant> getFixedPlants() {
    return [
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
      ),  Plant(
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

    ];
  }

  void showPlantsDialog(List<Plant> plants) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Recommended Plants'),
          content: Column(
            children: plants.map((plant) {
              return ListTile(
                leading: Image.asset(
                  plant.imageUrl,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                title: Text(plant.name),
                subtitle: Text(plant.category),
              );
            }).toList(),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          headerText,
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
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              headerText,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
            SizedBox(height: 30),
            // Light Conditions
            Text(
              'Light Conditions:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
            Row(
              children: [
                Radio(
                  value: 'low',
                  groupValue: lightCondition,
                  onChanged: (value) {
                    setState(() {
                      lightCondition = value.toString();
                    });
                  },
                ),
                Text('Low'),
                Radio(
                  value: 'bright',
                  groupValue: lightCondition,
                  onChanged: (value) {
                    setState(() {
                      lightCondition = value.toString();
                    });
                  },
                ),
                Text('Bright'),
                Radio(
                  value: 'full',
                  groupValue: lightCondition,
                  onChanged: (value) {
                    setState(() {
                      lightCondition = value.toString();
                    });
                  },
                ),
                Text('Full'),
              ],
            ),
            SizedBox(height: 20),
            // Watering Frequency
            Text(
              'Watering Frequency:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
            Row(
              children: [
                Radio(
                  value: 'low',
                  groupValue: wateringFrequency,
                  onChanged: (value) {
                    setState(() {
                      wateringFrequency = value.toString();
                    });
                  },
                ),
                Text('Low'),
                Radio(
                  value: 'medium',
                  groupValue: wateringFrequency,
                  onChanged: (value) {
                    setState(() {
                      wateringFrequency = value.toString();
                    });
                  },
                ),
                Text('Medium'),
                Radio(
                  value: 'high',
                  groupValue: wateringFrequency,
                  onChanged: (value) {
                    setState(() {
                      wateringFrequency = value.toString();
                    });
                  },
                ),
                Text('High'),
              ],
            ),
            SizedBox(height: 20),
            // Checkboxes
            Row(
              children: [
                Checkbox(
                  value: isPoisonous,
                  onChanged: (value) {
                    setState(() {
                      isPoisonous = value!;
                    });
                  },
                ),
                Text('Poisonous'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: needsPruning,
                  onChanged: (value) {
                    setState(() {
                      needsPruning = value!;
                    });
                  },
                ),
                Text('Require Regular Pruning for Maintenance'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: canBloom,
                  onChanged: (value) {
                    setState(() {
                      canBloom = value!;
                    });
                  },
                ),
                Text('Blooming Plant'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                List<Plant> fixedPlants = getFixedPlants();
                showPlantsDialog(fixedPlants);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.brown, // background color
                onPrimary: Colors.white, // text color
              ),
              child: Text(
                'Find My Plant',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
