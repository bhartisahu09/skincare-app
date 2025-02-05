import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:urbancultures_flutter_assignment/providers/skincare_provider.dart';
import 'package:urbancultures_flutter_assignment/views/streak_screen.dart';

class SkincareScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final skincareProvider = Provider.of<SkincareProvider>(context);

    return Scaffold(
      backgroundColor: const Color(0xFFFCF7FA),
      appBar: AppBar(
        title: const Text(
          "Daily Skincare",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: const Color(0xFFFCF7FA),
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StreaksScreen()),
            ),
            child: const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(Icons.arrow_forward, color: Colors.black),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: skincareProvider.steps.length,
                itemBuilder: (context, index) {
                  var step = skincareProvider.steps[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => skincareProvider.toggleStep(index),
                          child: Container(
                            width: 33,
                            height: 33,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(242, 232, 235, 1),        
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: step.completed
                                ? const Icon(Icons.check, color: Colors.black, size: 20)
                                : const SizedBox.shrink(),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                step.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                step.subtitle,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(150, 79, 102, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/icons/camera.png', width: 22, height: 22),
                            const SizedBox(width: 4),
                            Text(
                              step.time,
                              style: const TextStyle(color: Color.fromRGBO(150, 79, 102, 1), fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
           const SizedBox(height: 20),
          Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 4, bottom: 18), 
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
                            const Text('Routine',
                                style: TextStyle(
                                  color: Color.fromRGBO(150, 79, 102, 1),
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StreaksScreen()),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/icons/streaks.png',
                              width: 26,
                              height: 26,
                            ),
                            const SizedBox(height: 4),
                            const Text('Streaks',
                                style: TextStyle(
                                  color: Color.fromRGBO(150, 79, 102, 1),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
