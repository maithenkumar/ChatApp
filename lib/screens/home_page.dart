import 'package:chat_app/Constants/Constants.dart';
import 'package:chat_app/Widgets/profile_photo.dart';
import 'package:chat_app/screens/meassageScreen.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SeacrhBar(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Buttons(
                btntex: 'Active Now',
                bgcolor: Constant.black,
                txtcolor: Constant.white,
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => const ProfilePhoto(),
              ),
            ),
            Container(
              height: 600,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(136, 174, 138, 221),
                    Color.fromARGB(255, 34, 192, 231)
                  ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 10,bottom: 20),
                    child: Buttons(
                      btntex: "Resent",
                      bgcolor: Constant.white,
                      txtcolor: Constant.black,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 12,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) =>  SepreateChatBOxContainer(
                        name: 'Maitheen',
                        message: 'hi da eppadi irrika', fun: (){
                          Navigator.push(context, MaterialPageRoute(
                            
                            builder: (context) => MeassageScreen(),));
                        },
                      ),
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
