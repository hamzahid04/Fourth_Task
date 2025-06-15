import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  
  final String btnText;
  Function()? onPressed;
  
  MyButtons({
    super.key,
    required this.btnText,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed,
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 90, right: 90, top: 15, bottom: 15),
        child: Text(btnText,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
      ));
  }
}
