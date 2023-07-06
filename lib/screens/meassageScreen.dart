import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../Widgets/left_chat_container.dart';
import '../Widgets/right_chat_container.dart';
import '../Widgets/specalApp.dart';
import '../Widgets/text_message.dart';
import 'package:socket_io_client/socket_io_client.dart ' as IO;

class MeassageScreen extends StatefulWidget {
  const MeassageScreen({super.key});

  @override
  State<MeassageScreen> createState() => _MeassageScreenState();
}

class _MeassageScreenState extends State<MeassageScreen> {
//   TextEditingController controller = TextEditingController();

//   List _data = [

//   ];
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     connectedtoServer();
//   }
// List _message=[];
//   addmesage(message) {
//     setState(() {});
//   }
//  late IO.Socket socket;
// void connectedtoServer(){
//   socket =IO.io("http://localhost:3000",<String ,dynamic>{
//     "transport":["websocket"]
//   });
//   socket.onConnect((_) {
// print("connected");
// socket.emit("jion","chatRoom");
//   });
//   socket.on("chat message", (data) {

//     setState(() {
//       _data.add(data);
//       print(_data);
//     });
//   });
//   socket.onDisconnect((data) =>
//    print("Dissconnected"));
// }
// void _sendMessage(){
//   final String message=controller.text.trim();
//   if (message.isNotEmpty) {
//     socket.emit("chat message",{
//       "room":"chatRoom"
//       ,"message":message
//     });
//      controller.clear();

//   }
// }
// @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     socket.dispose();
//   }
  final TextEditingController _textController = TextEditingController();
  final List<String> _messages = [];

  late IO.Socket socket;
String clientId='';
  @override
  void initState() {
    super.initState();
    connectToServer();
  }

  void connectToServer() {
    socket = IO.io('http://localhost:3000', <String, dynamic>{
      'transports': ['websocket'],
    });

    socket.onConnect((_) {
      print('Connected');
      socket.emit('join', 'chatRoom');
    });

    socket.on('chat message', (data) {
      setState(() {
        _messages.add(data);
      });
    });
socket.on('client_id', (data) {
      setState(() {
        clientId = data; // Receive the client ID from the server
        if (kDebugMode) {
          print(clientId);
        }
      });
    });
    socket.onDisconnect((_) => print('Disconnected'));
  }

  void _sendMessage() {
    final String message = _textController.text.trim();
    if (message.isNotEmpty) {
      socket.emit('chat message', {
        'room': 'chatRoom',
        'client': clientId,
      });
       print("this for client id ${socket.id}");
      _textController.clear();  
    }
  }

  @override 
  void dispose() {
    socket.disconnect();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SpacelAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    reverse: true,
                    itemCount: _messages.length,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // _messages[index] == null
                        //     ? const Text('')
                        //     :
                            LeftChatContainer(
                                leftText: _messages[index],
                              ),
                        // Row(
                        //   children: [
                        //     const Spacer(),
                        //     _messages[index] == null
                        //         ? const Text('')
                        //         : RightChatContainer(
                        //             rightText: _messages[index],
                        //           ),
                        //   ],
                        // ),
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
                controller: _textController,
                fun: () {
                  _sendMessage();
                  setState(() {
                    print(_messages);
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
