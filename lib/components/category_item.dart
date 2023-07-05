import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color, this.onTap});
  String? text;
  Color? color;

  Function()? onTap;
  //or VoidCallback like Function
  // VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:BoxDecoration(borderRadius:BorderRadius.circular(25),
        boxShadow:[BoxShadow(color: color!.withOpacity(0.6),
        spreadRadius: 0.5,blurRadius:10,offset:Offset(0,3)),]),
          padding: EdgeInsets.only(left: 16),
          alignment: Alignment.centerLeft,
          height: 100,
          width: double.infinity,
         
          child: Text(
            text!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          ),
          
    );
  }
}
