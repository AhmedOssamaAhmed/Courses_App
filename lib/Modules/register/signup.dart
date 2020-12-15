import 'package:courses_application_training/Modules/login/Forgot_password.dart';
import 'package:courses_application_training/Modules/login/Login.dart';
import 'package:courses_application_training/Shared/colors/common_colors.dart';
import 'package:courses_application_training/Shared/components/components.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row( mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  headText('Sign up',),
                ],
              ),
              SizedBox(height: 30,),
              defaultTextInputField(
              controller: firstNameController,
              type: TextInputType.name,
              hint: 'Sarah',
              title: 'First name',
              ),
              SizedBox(height: 40,),
              defaultTextInputField(
                controller: lastNameController,
                type: TextInputType.name,
                hint: 'Smith',
                title: 'Last name',
              ),
              SizedBox(height: 40,),
              defaultTextInputField(
                controller: emailController,
                type: TextInputType.emailAddress,
                hint: 'Sarahsmith@gmail.com',
                title: 'Email',
              ),
              SizedBox(height: 40,),
              defaultTextInputField(
                controller: passwordController,
                type: TextInputType.visiblePassword,
                hint: '*************',
                title: 'Password',
                safe: true,
              ),
              SizedBox(height: 40,),
              defaultButton(radius:24 ,
                  fontSize: 12,
                  function: null,
                  text: 'Sign Up',
                  toUpper: false),
              SizedBox(
                height: 20,
              ),
              defaultButton(radius: 24,
                  background: Colors.grey[200],
                  textcolor: defaultColor,
                  function: (){
                    navigateTo(context, Login());
                  },
                  text: ' Login',
                  toUpper: false),
              SizedBox(height: 10,),
              InkWell(child:
               captionText('Forgot your password ?',),
                onTap: (){navigateTo(context, RestPassword());},)


            ],
          ),
        ),
      ))
    );
  }
}
