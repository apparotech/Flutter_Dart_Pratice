import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
class WebSocket extends StatefulWidget {
  const WebSocket({super.key});

  @override
  State<WebSocket> createState() => _WebSocketState();
}

class _WebSocketState extends State<WebSocket> {
  final channel = IOWebSocketChannel.connect('ws://echo.websocket.org');
  List<String> message= [];
  TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text(
           'WebSocket Demo',

         ),

       ),
       body: Padding(
           padding: const EdgeInsets.all(20.0),
         child: Column(
           children: [
             Form(
                 child: TextFormField(
                   controller: _controller,
                   decoration: InputDecoration(
                     labelText: 'Send a message'
                   ),
                 )
             ),
             StreamBuilder(
                 stream: channel.stream,
                 builder: (context, snapshot) {
                   if(snapshot.hasData){
                     message.add(snapshot.data);
                   }
                   return Expanded(
                       child: ListView.builder(
                         itemCount: message.length,
                           itemBuilder: (context, index) {
                           return ListTile(
                             title: Text(message[index]),
                           );
                           }
                       )
                   );
                 }
             )
           ],
         ),
       ),
       floatingActionButton:  FloatingActionButton(
           onPressed:  (){
             _sendMessage();
           },
         tooltip: 'Send message',
         child: Icon(Icons.send),
       ),
     );
  }
  void _sendMessage() {
    if(_controller.text.isNotEmpty) {
      channel.sink.add(_controller.text);
    }
  }
  void dispose() {
    channel.sink.close();
    super.dispose();
  }


}
