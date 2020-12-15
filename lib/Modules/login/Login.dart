import 'package:courses_application_training/Modules/profile/Profile.dart';
import 'package:courses_application_training/Modules/register/signup.dart';
import 'package:courses_application_training/Shared/colors/common_colors.dart';
import 'package:courses_application_training/Shared/components/components.dart';
import 'package:flutter/material.dart';

import 'Forgot_password.dart';

class Login extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Row(
                children: [
                  Text('Login',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),),
                ],
              ),
              SizedBox(height: 10,),
              Logo(),
              SizedBox(height: 20,),
              defaultTextInputField(controller: emailController,
                type: TextInputType.emailAddress,
              hint: 'Sarahsmith@gmail.com',
              title: 'Email'),
              SizedBox(height: 30,),
              defaultTextInputField(controller: passwordController,
                type: TextInputType.visiblePassword,
              safe: true,
              title: 'Password',
              hint: '***************',),
              SizedBox(height: 20,),
              defaultButton(radius:24 ,
                  fontSize: 12,
                  function: (){
                    navigateTo(context, Profile());
                  },
                  text: 'login',
                  toUpper: true),
              SizedBox(
                height: 20,
              ),
              defaultButton(radius: 24,
                  background: mainAppColor,
                  textcolor: defaultColor,
                  function: (){
                    navigateTo(context, SignUp());
                  },
                  text: 'Sign UP',
                  toUpper: false),
              SizedBox(height: 10,),
              InkWell(child:
              captionText('Forgot your password ?',),
              onTap: (){navigateTo(context, RestPassword());},)

            ],
          ),
        ),
      ),
    )
    );
  }
}
