import 'package:flutter/material.dart';

class StreaksViewModel extends ChangeNotifier {
  int streakDays = 2;
  int goal = 3;
  double last30DaysProgress = 100;

  void incrementStreak() {
    streakDays++;
    last30DaysProgress += 10;
    notifyListeners();
  }
}