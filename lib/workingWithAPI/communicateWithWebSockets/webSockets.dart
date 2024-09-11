import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketPage extends StatefulWidget {
  const WebSocketPage({super.key});

  @override
  State<WebSocketPage> createState() => _WebSocketPageState();
}

class _WebSocketPageState extends State<WebSocketPage> {
  final TextEditingController inputController = TextEditingController();
  final _channel =
      WebSocketChannel.connect(Uri.parse('wss://echo.websocket.events'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebSocket'),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
                child: TextFormField(
              controller: inputController,
              decoration: const InputDecoration(labelText: 'Send message'),
            )),
            const SizedBox(
              height: 15,
            ),
            StreamBuilder(
                stream: _channel.stream,
                builder: (context, snapshot) {
                  return Text(snapshot.hasData ? '${snapshot.data}' : '');
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _sendMsg,
        child: const Icon(
          Icons.add,
          color: Colors.pink,
        ),
      ),
    );
  }

  void _sendMsg() {
    if (inputController.text.isNotEmpty) {
      _channel.sink.add(inputController.text);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _channel.sink.close();
    inputController.dispose();
    super.dispose();
  }
}
