import 'package:chat_app/Constants/constants.dart';
import 'package:flutter/material.dart';

class TextMessageField extends StatelessWidget {
  const TextMessageField({super.key, required this.controller, required this.fun});

  final TextEditingController controller;
  final VoidCallback fun;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Constant.black,
        borderRadius: BorderRadius.circular(40)
      ),
      child: TextField(
        autofocus:  true,
        controller: controller,
        
        style: const TextStyle(
          
            color: Constant.white, fontSize: 14, fontWeight: FontWeight.w400),
        decoration: InputDecoration(
          
            fillColor: Constant.black,
            enabledBorder: InputBorder.none,
            hintText: "your  message ",
            hintStyle: const TextStyle(
              color: Color.fromARGB(255, 143, 138, 138),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            focusedBorder: InputBorder.none,
            prefixIcon: GestureDetector(
              child: const Icon(
                Icons.add_a_photo_sharp,
                color: Constant.white,
              ),
            ),
            suffixIcon: GestureDetector(
              onTap: fun,
                  child: const Icon(
                    Icons.arrow_circle_right,
                    color: Constant.white,
                  ),
                ),
            // suffixIcon: Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     GestureDetector(
            //       child: const Icon(
            //         Icons.arrow_circle_right,
            //         color: Constant.white,
            //       ),
            //     ),
            //     GestureDetector(
            //       child: const Icon(
            //         Icons.mic,
            //         color: Constant.white,
            //       ),
            //     )
            //   ],
            // )
            ),
      ),
    );
  }
}
