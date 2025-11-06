import 'package:flutter/material.dart';
import '../components/custom_card.dart';
import '../constants.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key? key,
    required this.bmr,
    required this.dailyCalories,
    required this.activityDescription,
    required this.recommendation,
  }) : super(key: key);

  final double bmr;
  final double dailyCalories;
  final String activityDescription;
  final String recommendation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMR CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Header
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          
          // Result Card
          Expanded(
            flex: 5,
            child: CustomCard(
              color: activeCardColor,
              cardChild: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // BMR Result
                    Column(
                      children: [
                        const Text(
                          'BASAL METABOLIC RATE',
                          style: resultTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          bmr.toStringAsFixed(0),
                          style: bmrTextStyle,
                        ),
                        const Text(
                          'Calories/day',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                    
                    // Daily Calories
                    Column(
                      children: [
                        const Text(
                          'DAILY CALORIE NEEDS',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '${activityDescription.toUpperCase()}:',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '${dailyCalories.toStringAsFixed(0)} Calories/day',
                          style: calorieTextStyle,
                        ),
                      ],
                    ),
                    
                    // Recommendation
                    Column(
                      children: [
                        const Text(
                          'RECOMMENDATION',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          recommendation,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          // Re-calculate Button
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}