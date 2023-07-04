import 'package:chat_app/Constants/Constants.dart';
import 'package:flutter/material.dart';

class LeftChatContainer extends StatelessWidget {
  const LeftChatContainer({super.key, required this.leftText});
final String leftText;
  @override
  Widget build(BuildContext context) {
    return Container(
padding: EdgeInsets.all(10),
decoration: BoxDecoration(
  color: const Color.fromARGB(255, 204, 202, 202),
  borderRadius: BorderRadius.circular(12)

),
      child: Text( leftText,style: TextStyle(
        color: Constant.black,
        fontSize: 12,
        fontWeight: FontWeight.w300,

      ),),
    );
  }
}