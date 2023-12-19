import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant/plant_detail_screen.dart';

class PlantDropdown extends StatefulWidget {
  final Plant plant;

  PlantDropdown({required this.plant});

  @override
  _PlantDropdownState createState() => _PlantDropdownState();
}

class _PlantDropdownState extends State<PlantDropdown> {
  String selectedOption = 'Instructions'; // Default option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          widget.plant.name,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            widget.plant.imageUrl,
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
                  'Choose an Option:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                DropdownButton<String>(
                  value: selectedOption,
                  items: ['Instructions', 'Problems Growing']
                      .map((option) => DropdownMenuItem<String>(
                            value: option,
                            child: Text(option),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value ?? 'Instructions';
                    });
                  },

                ),
                SizedBox(height: 16),
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 22, color: Colors.brown),
                    children: [
                      TextSpan(
                        text: selectedOption == 'Instructions'
                            ? 'Care Instructions:'
                            : 'Problems Growing:',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                        '\n${selectedOption == 'Instructions' ? widget.plant.careInstructions : widget.plant.problemsGrowing}',
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16),
                Text(
                  widget.plant.isPoisonous == true
                      ? 'Warning: This plant is poisonous!'
                      : 'This plant is not poisonous.',
                  style: TextStyle(
                    fontSize: 18,
                    color: widget.plant.isPoisonous == true ? Colors.red : Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
