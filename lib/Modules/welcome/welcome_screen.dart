import 'package:courses_application_training/Modules/login/Login.dart';
import 'package:courses_application_training/Modules/register/signup.dart';
import 'package:courses_application_training/Shared/colors/common_colors.dart';
import 'package:courses_application_training/Shared/components/components.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              width: 194,
                child: headText('Welcome to Courses'),),
            SizedBox(height:20),
            Logo(),
            SizedBox(
              height: 20,
            ),
            defaultButton(radius:24 ,
                fontSize: 12,
                function: (){
                  navigateTo(context, Login());
                },
                text: 'login',
                toUpper: true),
            SizedBox(
              height: 20,
            ),
            defaultButton(radius: 24,
              background: Colors.grey[200],
              textcolor: defaultColor,
              function: (){
                navigateTo(context, SignUp());
              },
              text: 'Sign UP',
            toUpper: false),
            SizedBox(height: 20,),
            captionText('Or login with'),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: defaultColor,
                  child: Image(
                    image: AssetImage('assets/images/apple.png', ),
                    height: 16,
                    width: 13.5,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 25,),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: defaultColor,
                  child: Image(
                    image: AssetImage('assets/images/google.png'),
                    height: 16,
                    width: 13.5,
                    color: Colors.white,
                  ),
                ),

              ],)

          ],
        ),
      )

    );
  }
}
