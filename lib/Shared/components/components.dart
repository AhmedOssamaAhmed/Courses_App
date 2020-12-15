
import 'package:courses_application_training/Shared/colors/common_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double fontSize = 14,
  Color textcolor = Colors.white,
  Color background = defaultColor,
  double radius = 5.0,
  @required Function function,
  @required String text,
  bool toUpper = true,})=> Container(
  width: double.infinity,
  height: 40.0,
  decoration: BoxDecoration(
      color: background,
      borderRadius: BorderRadius.circular(radius),
    border: Border.all(color: defaultColor, )
  ),
  child: FlatButton(
    onPressed: function ,
    child: Text(
      toUpper ? text.toUpperCase() : text,
      style: TextStyle(
        fontSize: fontSize,
        color: textcolor
    ),),
  ),
);

Widget defaultTextInputField({
  bool safe = false,
  String title,
  String hint = '',
  @required TextEditingController controller,
  @required TextInputType type,
})=>Container(width: 334,
  padding: EdgeInsetsDirectional.only(
    start: 10,
    end: 10,
    top: 10,
  ),
  decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(color: Colors.grey.withOpacity(0.5),
      spreadRadius: 1,
      offset: Offset(1,3))
    ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(16)
  ),
  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      detailsText(title),
      TextFormField(
          controller: controller,
          obscureText: safe,
          decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 16, color: Colors.grey[300]),
              border: InputBorder.none,
              hintText: hint,
          ),
        keyboardType: type,
      ),

    ],
  ),
);



Widget headText(String text)=>Text(text,
  style: TextStyle(fontSize: 32,),
  maxLines: 2,
  textAlign: TextAlign.center, );

Widget captionText(String text)=>Text(text, style: TextStyle(fontSize: 16),);

Widget detailsText(String text)=> Text(text, style: TextStyle(fontSize: 12),);

Widget Logo()=>Image(image: AssetImage('assets/images/logo.png'));

void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  )
);