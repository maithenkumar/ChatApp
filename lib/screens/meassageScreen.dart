import 'package:flutter/material.dart';

import '../Widgets/left_chat_container.dart';
import '../Widgets/right_chat_container.dart';
import '../Widgets/specalApp.dart';
import '../Widgets/text_message.dart';

class MeassageScreen extends StatefulWidget {
  const MeassageScreen({super.key});

  @override
  State<MeassageScreen> createState() => _MeassageScreenState();
}

class _MeassageScreenState extends State<MeassageScreen> {
  TextEditingController controller = TextEditingController();
  List data = [
    {
      "leftmsg": "hi da \nhow are you ",
      "rightmsg": "haan hi iam so good ",
    },
    {
      "leftmsg": "hi da how are you ",
    },
    {
      "leftmsg": "hi da how are you ",
      "rightmsg": "haan hi iam so good ",
    },
    {
      "leftmsg": "hi da how are you ",
      "rightmsg": "haan hi iam so good ",
    },
    {
      "leftmsg": "hi da how are you ",
      "rightmsg": "haan hi iam so good ",
    },
    {
      "leftmsg": "hi da how are you ",
      "rightmsg": "haan hi iam so good ",
    },
    {
      "leftmsg": "hi d\n how are you ",
      "rightmsg": "haan hi iam so good ",
    },
    {
      "leftmsg": "hi da how are you ",
      "rightmsg": "haan hi iam so good ",
    },
    {
      "leftmsg": "hi da \nhow are you ",
      "rightmsg": "haan hi iam so good ",
    },
    {
      "leftmsg": "hi da how are you ",
      "rightmsg": "haan hi iam so good ",
    },
    {
      "leftmsg": "hi da how are you ",
      "rightmsg": "haan hi iam so good ",
    },
    {
      "leftmsg": "hi da how are you ",
      "rightmsg": "haan hi iam so good ",
    },
    {
      "leftmsg": "hi da how are you ",
      "rightmsg": "haan hi iam so good ",
    },
    {
      "leftmsg": "hi da how are you ",
    },
    {
      "leftmsg": "hi d\n how are you ",
      "rightmsg": "haan hi iam so good ",
    },
    {
      "leftmsg": "hi da how are you ",
      "rightmsg": "haan hi iam so good ",
    },
  ];

  addmesage(message) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SpacelAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            // Positioned(
            //   top: 0,
            //   child: LeftChatContainer()),
            //   Positioned(
            //     top: 10,
            //     right: 0,
            //     child: RightChatContainer()),

            //
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    reverse: true,
                    itemCount: data.length,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        data[index]["leftmsg"] == null
                            ? const Text('')
                            : LeftChatContainer(
                                leftText: data[index]["leftmsg"],
                              ),
                        Row(
                          children: [
                            const Spacer(),
                            data[index]["rightmsg"] == null
                                ? const Text('')
                                : RightChatContainer(
                                    rightText: data[index]["rightmsg"],
                                  ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: TextMessageField(
                controller: controller,
                fun: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
