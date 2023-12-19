import 'package:flutter/material.dart';
import 'plant_detail_screen.dart';
import 'plant_dropdown.dart';

class PlantListViewScreen extends StatelessWidget {
  final String plantCategory;
  final List<Plant> plants;

  PlantListViewScreen({required this.plantCategory, required this.plants});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('$plantCategory Plants'), // Dynamically set the title
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Explore $plantCategory Plants',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.brown),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: plants.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        plants[index].name,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.brown),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlantDropdown(plant: plants[index]),
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlantDropdown(plant: plants[index]),
                          ),
                        );
                      },
                      child: Image.asset(
                        plants[index].imageUrl,
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
