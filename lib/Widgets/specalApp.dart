import 'package:chat_app/Constants/Constants.dart';
import 'package:flutter/material.dart';

import 'profile_photo.dart';

AppBar SpacelAppBar() {
  return AppBar(
    flexibleSpace: Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
         gradient: LinearGradient(colors: 
         [
          const Color.fromARGB(255, 46, 44, 44),
            const Color.fromARGB(255, 46, 44, 44)
         ])
      ),
      child: Row(
        children: [
          AnotherProfilePhoto()
        ],
      ),
    ),
    shape: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none,
    ),
  );
}
