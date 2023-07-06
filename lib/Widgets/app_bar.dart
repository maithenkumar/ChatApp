import 'package:chat_app/Constants/Constants.dart';
import 'package:flutter/material.dart';

AppBar appbar({required String title}) {
  return AppBar(
    automaticallyImplyLeading: false,
    
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        color: Constant.black,
        fontWeight: FontWeight.w700
      ),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(
          Icons.bookmark_outline_rounded,
          color: Constant.black,
        ),
      ),
       Padding(
         padding: EdgeInsets.only(right: 20),
         child: Icon(
          Icons.heart_broken,
          color: Constant.red,
             ),
       )
    ],
  );
}
