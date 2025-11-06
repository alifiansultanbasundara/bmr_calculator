import 'package:flutter/material.dart';

// Warna yang digunakan dalam aplikasi
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);

// Enum untuk jenis kelamin
enum Gender {
  male,
  female,
}

// Enum untuk tingkat aktivitas
enum ActivityLevel {
  sedentary,       // little or no exercise
  light,           // exercise 1-3 times/week
  moderate,        // exercise 4-5 times/week
  active,          // daily exercise or intense exercise 3-4 times/week
  veryActive,      // intense exercise 6-7 times/week
  extraActive,     // very intense exercise daily, or physical job
}

// Gaya teks untuk berbagai elemen UI
const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const numberTextStyle = TextStyle(
  fontSize: 45.0,
  fontWeight: FontWeight.w900,
);

const buttonTextStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
);

const resultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22,
  fontWeight: FontWeight.bold,
);

const bmrTextStyle = TextStyle(
  fontSize: 80,
  fontWeight: FontWeight.bold,
);

const calorieTextStyle = TextStyle(
  fontSize: 22,
);

const activityTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
);

const bodyTextStyle = TextStyle(
  fontSize: 22.0,
);