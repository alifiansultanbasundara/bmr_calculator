import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/custom_card.dart';
import '../components/icon_card.dart';
import '../constants.dart';
import 'result_page.dart';
import '../components/bottom_button.dart';
import '../components/round_icon_button.dart';
import '../calculator.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  ActivityLevel selectedActivity = ActivityLevel.moderate;
  int height = 170;
  int weight = 70;
  int age = 25;

  // Deskripsi untuk setiap tingkat aktivitas
  final Map<ActivityLevel, String> activityDescriptions = {
    ActivityLevel.sedentary: 'Sedentary: little or no exercise',
    ActivityLevel.light: 'Light: exercise 1-3 times/week',
    ActivityLevel.moderate: 'Moderate: exercise 4-5 times/week',
    ActivityLevel.active: 'Active: daily exercise or intense exercise 3-4 times/week',
    ActivityLevel.veryActive: 'Very Active: intense exercise 6-7 times/week',
    ActivityLevel.extraActive: 'Extra Active: very intense exercise daily, or physical job',
  };

  // Ikon untuk setiap tingkat aktivitas
  final Map<ActivityLevel, IconData> activityIcons = {
    ActivityLevel.sedentary: FontAwesomeIcons.couch,
    ActivityLevel.light: FontAwesomeIcons.walking,
    ActivityLevel.moderate: FontAwesomeIcons.running,
    ActivityLevel.active: FontAwesomeIcons.personRunning,
    ActivityLevel.veryActive: FontAwesomeIcons.dumbbell,
    ActivityLevel.extraActive: FontAwesomeIcons.personBiking,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMR CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Section Gender Selection - diperkecil flex
            Expanded(
              flex: 2, // Reduced from default 1
              child: Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      color: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: const IconCard(
                        cardIcon: FontAwesomeIcons.mars,
                        caption: 'MALE',
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomCard(
                      color: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: const IconCard(
                        cardIcon: FontAwesomeIcons.venus,
                        caption: 'FEMALE',
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            
            // Section Height - diperkecil flex
            Expanded(
              flex: 2, // Reduced from default 1
              child: CustomCard(
                color: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: numberTextStyle,
                        ),
                        const Text(
                          'cm',
                          style: labelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: const Color(0xFF8D8E98),
                        thumbColor: const Color(0xFFEB1555),
                        overlayColor: const Color(0x29EB1555),
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double value) {
                          setState(() {
                            height = value.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // Section Weight and Age - diperkecil flex
            Expanded(
              flex: 2, // Reduced from default 1
              child: Row(
                children: [
                  // Weight
                  Expanded(
                    child: CustomCard(
                      color: activeCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: labelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: numberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    if (weight > 1) {
                                      weight--;
                                    }
                                  });
                                },
                              ),
                              const SizedBox(width: 10.0),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  // Age
                  Expanded(
                    child: CustomCard(
                      color: activeCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: labelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: numberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    if (age > 1) {
                                      age--;
                                    }
                                  });
                                },
                              ),
                              const SizedBox(width: 10.0),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // Section Activity Level - diperbesar flex untuk menampung lebih banyak konten
            Expanded(
              flex: 3, // Increased to give more space for activity levels
              child: CustomCard(
                color: activeCardColor,
                cardChild: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        'ACTIVITY LEVEL',
                        style: labelTextStyle,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: ActivityLevel.values.length,
                        itemBuilder: (context, index) {
                          final level = ActivityLevel.values[index];
                          return ActivityLevelCard(
                            level: level,
                            description: activityDescriptions[level]!,
                            icon: activityIcons[level]!,
                            isSelected: selectedActivity == level,
                            onTap: () {
                              setState(() {
                                selectedActivity = level;
                              });
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // Calculate Button - tetap di bagian bawah
            BottomButton(
              buttonTitle: 'CALCULATE BMR',
              onTap: () {
                // Membuat objek Calculator dengan data input
                Calculator calculator = Calculator(
                  height: height,
                  weight: weight,
                  age: age,
                  gender: selectedGender,
                  activityLevel: selectedActivity,
                );
                
                // Menghitung BMR dan kebutuhan kalori
                double bmr = calculator.calculateBMR();
                double dailyCalories = calculator.calculateDailyCalories();
                String activityDesc = calculator.getActivityDescription();
                String recommendation = calculator.getRecommendation();
                
                // Navigasi ke halaman hasil
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmr: bmr,
                      dailyCalories: dailyCalories,
                      activityDescription: activityDesc,
                      recommendation: recommendation,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Custom widget untuk Activity Level Card
class ActivityLevelCard extends StatelessWidget {
  const ActivityLevelCard({
    Key? key,
    required this.level,
    required this.description,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  final ActivityLevel level;
  final String description;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isSelected ? const Color(0xFFEB1555).withOpacity(0.2) : const Color(0xFF1D1E33),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ListTile(
        dense: true, // Makes the tile smaller
        leading: Icon(
          icon,
          color: isSelected ? const Color(0xFFEB1555) : Colors.white70,
          size: 20, // Smaller icon
        ),
        title: Text(
          description,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.white70,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 14, // Smaller font
          ),
        ),
        trailing: isSelected
            ? const Icon(
                Icons.check_circle,
                color: Color(0xFFEB1555),
                size: 20, // Smaller check icon
              )
            : null,
        onTap: onTap,
      ),
    );
  }
}