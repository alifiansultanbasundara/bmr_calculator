// Import file constants yang berisi definisi enum Gender dan ActivityLevel
import 'constants.dart';

// Class Calculator untuk menghitung BMR dan kebutuhan kalori harian
class Calculator {
  Calculator({
    required this.height,
    required this.weight,
    required this.age,
    required this.gender,
    required this.activityLevel,
  });

  final int height; // dalam cm
  final int weight; // dalam kg
  final int age; // dalam tahun
  final Gender gender;
  final ActivityLevel activityLevel;

  // Menghitung BMR menggunakan Mifflin-St Jeor Equation (paling akurat)
  double calculateBMR() {
    if (gender == Gender.male) {
      // Formula untuk pria: BMR = 10W + 6.25H - 5A + 5
      return (10 * weight) + (6.25 * height) - (5 * age) + 5;
    } else {
      // Formula untuk wanita: BMR = 10W + 6.25H - 5A - 161
      return (10 * weight) + (6.25 * height) - (5 * age) - 161;
    }
  }

  // Mendapatkan faktor aktivitas berdasarkan tingkat aktivitas
  double _getActivityFactor() {
    switch (activityLevel) {
      case ActivityLevel.sedentary:
        return 1.2; // little or no exercise
      case ActivityLevel.light:
        return 1.375; // exercise 1-3 times/week
      case ActivityLevel.moderate:
        return 1.465; // exercise 4-5 times/week
      case ActivityLevel.active:
        return 1.55; // daily exercise or intense exercise 3-4 times/week
      case ActivityLevel.veryActive:
        return 1.725; // intense exercise 6-7 times/week
      case ActivityLevel.extraActive:
        return 1.9; // very intense exercise daily, or physical job
      default:
        return 1.2; // default value jika ada kasus yang tidak terduga
    }
  }

  // Menghitung kebutuhan kalori harian berdasarkan BMR dan tingkat aktivitas
  double calculateDailyCalories() {
    return calculateBMR() * _getActivityFactor();
  }

  // Mendapatkan deskripsi tingkat aktivitas
  String getActivityDescription() {
    switch (activityLevel) {
      case ActivityLevel.sedentary:
        return 'Sedentary: little or no exercise';
      case ActivityLevel.light:
        return 'Light: exercise 1-3 times/week';
      case ActivityLevel.moderate:
        return 'Moderate: exercise 4-5 times/week';
      case ActivityLevel.active:
        return 'Active: daily exercise or intense exercise 3-4 times/week';
      case ActivityLevel.veryActive:
        return 'Very Active: intense exercise 6-7 times/week';
      case ActivityLevel.extraActive:
        return 'Extra Active: very intense exercise daily, or physical job';
      default:
        return 'Sedentary: little or no exercise'; // default value
    }
  }

  // Mendapatkan rekomendasi berdasarkan BMR
  String getRecommendation() {
    final bmr = calculateBMR();
    if (bmr < 1200) {
      return 'Your BMR is quite low. Consider consulting a nutritionist for dietary advice.';
    } else if (bmr > 2500) {
      return 'Your BMR is high. Maintain a balanced diet and regular exercise.';
    } else {
      return 'Your BMR is within normal range. Maintain your current lifestyle.';
    }
  }
}