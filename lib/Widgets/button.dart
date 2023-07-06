
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key, required this.btntex, required this.bgcolor, required this.txtcolor});
final String btntex;
final Color bgcolor;
final Color txtcolor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor,
        minimumSize: Size(60, 30)
        
      ),
      child: Text(btntex,
      style:  TextStyle(
        color: txtcolor,
        fontSize: 10,
        fontWeight: FontWeight.w700
      ),),
    );
  }
}
