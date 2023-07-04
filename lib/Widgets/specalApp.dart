import '../Constants/Constants.dart';
import 'package:flutter/material.dart';

AppBar SpacelAppBar() {
  return AppBar(
    flexibleSpace: Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(left: 5, right: 10, top: 5, bottom: 5),
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 46, 44, 44),
            Color.fromARGB(255, 46, 44, 44)
          ])),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Constant.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text("Maitheen",
                      style: const TextStyle(
                          color: Constant.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                ),
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Constant.green),
                    ),
                  const   Padding(
                      padding:  EdgeInsets.only(left: 3),
                      child:  Text("Active Now",
                          style: TextStyle(
                              color: Constant.green,
                              fontSize: 12,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          GestureDetector(
            child: const Icon(
              Icons.phone,
              color: Constant.green,
              size: 35,
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: GestureDetector(
              child:const  Icon(
                Icons.video_call,
                color: Constant.green,
                size: 35,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
