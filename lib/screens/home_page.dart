import 'package:chat_app/Constants/Constants.dart';
import 'package:chat_app/Widgets/profile_photo.dart';
import 'package:flutter/material.dart';

import '../Widgets/app_bar.dart';
import '../Widgets/button.dart';
import '../Widgets/secarch_bar.dart';
import '../Widgets/sepreate_chat_box_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(title: 'Messages'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SeacrhBar(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Buttons(
              btntex: 'Active Now',
              bgcolor: Constant.black,
              txtcolor: Constant.white,
            ),
          ),
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => ProfilePhoto(),
            ),
          ),
          Container(
            height: 600,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(136, 174, 138, 221),
                  Color.fromARGB(255, 34, 192, 231)
                ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: const Buttons(
                    btntex: "Resent",
                    bgcolor: Constant.white,
                    txtcolor: Constant.black,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 12,
                    itemBuilder: (context, index) => SepreateChatBOxContainer(
                      name: 'Maitheen',
                      message: 'hi da eppadi irrika',
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
