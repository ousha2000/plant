import 'package:flutter/material.dart';

class Plant {
  final String name;
  final String imageUrl;
  final String careInstructions;
  final String problemsGrowing;
  final String category;
  final bool? isPoisonous;

  final String water;
  final String light;
  final bool? needsPruning;
  final bool? canBloom;

  Plant({
    required this.name,
    required this.imageUrl,
    required this.careInstructions,
    required this.problemsGrowing,
    required this.category,
    required this.isPoisonous,

    required this.water,
    required this.light,
    required this.needsPruning,
    required this.canBloom,
  });

}




class PlantDetailScreen extends StatelessWidget {
  final Plant plant;

  PlantDetailScreen({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          plant.name,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            plant.imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Care Instructions:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  plant.careInstructions,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}