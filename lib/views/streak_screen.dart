import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:urbancultures_flutter_assignment/providers/skincare_provider.dart';

class StreaksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final skincareProvider = Provider.of<SkincareProvider>(context);

    return Scaffold(
      backgroundColor: const Color(0xFFFCF7FA),
      appBar: AppBar(
        title: const Text(
          'Streaks',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: const Color(0xFFFCF7FA),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Today's Goal: 5 streak days",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(242, 232, 235, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Streak Days",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "${skincareProvider.completedStepsCount}",
                    style: const TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Daily Streak",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 5),
            Text(
              "${skincareProvider.completedStepsCount}",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Text(
                  "Last 30 Days +",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(150, 79, 102, 1)),
                ),
                Text(
                  "${skincareProvider.completedStepsCount * 10}%",
                  style: const TextStyle(fontSize: 16, color: Colors.green),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Container(
              height: 260,
              child: Image.asset(
                'assets/images/frame.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 60),
            const Text(
              "Keep it up! You're on a roll.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF2E8EB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 160, vertical: 12),
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                    border:
                        Border(top: BorderSide(color: Colors.grey.shade300)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/icons/routine.png',
                              width: 26,
                              height: 26,
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'Routine',
                              style: TextStyle(
                                color: Color.fromRGBO(150, 79, 102, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/icons/streaks.png',
                            width: 26,
                            height: 26,
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Streaks',
                            style: TextStyle(
                              color: Color.fromRGBO(150, 79, 102, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
