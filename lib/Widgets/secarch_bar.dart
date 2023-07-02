import 'package:chat_app/Constants/Constants.dart';
import 'package:flutter/material.dart';

class SeacrhBar extends StatelessWidget {
  const SeacrhBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 190, 186, 186),
          borderRadius: BorderRadius.circular(20)),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search...",
            hintStyle: TextStyle(
              color: Constant.black,
            ),
            focusColor: Constant.green,
            suffixIconColor: Constant.grey,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
             
            ),
            suffixIcon: const Icon(
              Icons.person_3_outlined,
              color: Constant.grey,
            )),
      ),
    );
  }
}
