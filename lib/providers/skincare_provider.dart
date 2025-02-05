import 'package:flutter/material.dart';
import 'package:urbancultures_flutter_assignment/models/skincare_step.dart';

class SkincareProvider extends ChangeNotifier {
  List<SkincareStep> steps = [
    SkincareStep("Cleanser", "Cetaphil Gentle Skin Cleanser", "8:00 PM", true),
    SkincareStep("Toner", "Thayers Witch Hazel Toner", "8:02 PM", true),
    SkincareStep("Moisturizer", "Kiehl's Ultra Facial Cream", "8:04 PM", true),
    SkincareStep("Sunscreen", "Supergoop Unseen Sunscreen SPF 40", "8:06 PM", true),
    SkincareStep("Lip Balm", "Glossier Birthday Balm Dotcom", "8:08 PM", true),
  ];

  void toggleStep(int index) {
    steps[index].completed = !steps[index].completed;
    notifyListeners();
  }

  int get completedStepsCount {
    return steps.where((step) => step.completed).length;
  }
}