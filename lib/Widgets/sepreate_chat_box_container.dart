import 'package:chat_app/Constants/constants.dart';
import 'package:chat_app/Widgets/profile_photo.dart';
import 'package:flutter/material.dart';

class SepreateChatBOxContainer extends StatelessWidget {
  const SepreateChatBOxContainer({super.key, required this.name, required this.message});
final String name;
final String message;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)
        ),
       
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AnotherProfilePhoto(),
            Padding(
              padding: const EdgeInsets.only(left:7.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      name,
                      style: 
                               const    TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: Constant.black
                  
                      ),
                    ),
                  ),
                   Text(
                    message,
                    style: 
                 const    TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Constant.black
                
                    ),
                  )
                ],
              ),
            )
    
          ],
        ),
      ),
    );
  }
}