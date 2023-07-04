import 'package:flutter/material.dart';

import '../Constants/Constants.dart';

class RightChatContainer extends StatelessWidget {
  const RightChatContainer({super.key, required this.rightText});
final String rightText;
  @override
  Widget build(BuildContext context) {
    return Container(
padding: EdgeInsets.all(10),
decoration: BoxDecoration(
  gradient: LinearGradient(colors: 
  [
    Color.fromARGB(255, 221, 118, 212),
    Color.fromARGB(255, 0, 195, 255),

  ],
  
  begin: Alignment.centerLeft,
  end: Alignment.centerRight
  ),
  color: Constant.grey,
  borderRadius: BorderRadius.circular(12)

),
      child: Text(rightText,style:const  TextStyle(
        color: Constant.black,
        fontSize: 12,
        fontWeight: FontWeight.w300,

      ),),
    );
  }
}