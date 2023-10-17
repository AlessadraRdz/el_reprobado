import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget{
 const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI8oxR3qw532EaYDiLPkfhz3LOT9OrLaPlIQ&usqp=CAU'),
          ),
        ),
        title: const Text('Jennifer Aniston'),
        centerTitle: 
        false,
       ),
       body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: Container(color: Colors.red,)),
            const Text('Holaaaa'),
            const Text('Mundooo')
          ],
        ),
      ),
    );
  }
}