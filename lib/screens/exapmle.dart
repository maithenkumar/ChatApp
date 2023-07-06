import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;



class ChatApp extends StatefulWidget {
  @override
  _ChatAppState createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  final TextEditingController _textController = TextEditingController();
  final List<String> _messages = [];

  late IO.Socket socket;

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

    socket.onDisconnect((_) => print('Disconnected'));
  }

  void _sendMessage() {
    final String message = _textController.text.trim();
    if (message.isNotEmpty) {
      socket.emit('chat message', {
        'room': 'chatRoom',
        'message': message,
      });
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chat App'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_messages[index]),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        hintText: 'Enter a message',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _sendMessage,
                    child: Text('Send'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
