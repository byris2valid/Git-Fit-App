import 'package:flutter/material.dart';


class Pushups extends StatelessWidget {
  const Pushups({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pushups',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
       child: Center(
          child: Text(
            'Pushups are a great way to build upper body strength and endurance. They are a compound exercise that works multiple muscle groups, including the chest, shoulders, and triceps. To perform a pushup, start in a plank position with your hands shoulder-width apart and your feet together. Lower your body until your chest touches the ground, then push back up to the starting position. Repeat for the desired number of repetitions.',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}