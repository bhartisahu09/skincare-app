import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:urbancultures_flutter_assignment/providers/skincare_provider.dart';
import 'package:urbancultures_flutter_assignment/viewmodels/streaks_viewmodel.dart';
import 'package:urbancultures_flutter_assignment/views/skincare_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SkincareProvider()),
        ChangeNotifierProvider(create: (context) => StreaksViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SkincareScreen(),
      ),
    );
  }
}