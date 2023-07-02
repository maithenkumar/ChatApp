import 'package:chat_app/Constants/Constants.dart';
import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
children: [
   Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Constant.grey,
            borderRadius: BorderRadius.circular(40)
          ),
        ),
        Positioned(
          bottom: 3,
          right:4,
          child: 
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            border: Border.all(
              color: Constant.white,
              
            ),
            borderRadius: BorderRadius.circular(15),
            color: Constant.green
          ),
        ))
],
      ),
    );
  }
}

class AnotherProfilePhoto extends StatelessWidget {
  const AnotherProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
children: [
   Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Constant.grey,
            borderRadius: BorderRadius.circular(40)
          ),
        ),
]
      ),
    );
  }
}