import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const CustomRoundedButton({super.key,
  required this.label,
  required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
      decoration: BoxDecoration(
      color: Colors.indigo,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
      BoxShadow(  color: Colors.black26,
        offset:Offset(4, 4),
        blurRadius:23,
        spreadRadius:4,)
      ],

      ),
      child:Text(label,
      style: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),),

    );
  
  }
}