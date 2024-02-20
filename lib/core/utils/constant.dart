import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void navigateTo(context,Widget)=>Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context)=>Widget
    ));

void navigateAndFinish(context,Widget)=>  Navigator.pushAndRemoveUntil(
     context,
     MaterialPageRoute(
         builder: (context) => Widget),
         (route) => false,
);

Widget container()=>Container(
  width: 134,
  height: 5,
  margin: const EdgeInsets.only(bottom: 8),
  decoration: ShapeDecoration(
    color: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);