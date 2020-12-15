import 'package:courses_application_training/Shared/colors/common_colors.dart';
import 'package:courses_application_training/Shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

class RestPassword extends StatelessWidget {
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ForgotPassword'),),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 241,),
              defaultTextInputField(controller: emailController,
                  type: TextInputType.emailAddress,
                  hint: 'Sarahsmith@gmail.com',
                  title: 'Email'),
              SizedBox(height: 230,),
              defaultButton(
                function: null,
                text: 'Send reset code',
                fontSize: 12,
                radius: 24,
              ),
              SizedBox(height: 10,),
              InkWell(child:
              captionText('Login',),
                onTap: (){navigateTo(context, Login());},)
            ],
          ),
        ),
      ),
    );
  }
}
