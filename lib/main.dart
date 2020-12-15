import 'package:courses_application_training/Shared/colors/common_colors.dart';
import 'package:flutter/material.dart';

import 'Modules/welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: defaultColor,
      ),
              scaffoldBackgroundColor: mainAppColor,
      ),

      home:WelcomeScreen()
    );
  }
}


