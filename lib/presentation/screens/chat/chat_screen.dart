import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../domain/dtos/message.dart';
import '../../providers/chats/chat_provider.dart';
import '../../widgets/chat/her_message_bubble.dart';
import '../../widgets/chat/my_message_bubble.dart';
import '../../widgets/herBar/her_presentation.dart';
import '../../widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow,
      appBar: HerPresentation(
        nombre: 'Jennifer Aniston',
        urlAvatar:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3_iU_8YD1YC2UL6djWnyBbqV-gRpcAf7yRw&usqp=CAU',
      ),
      body: ChatView(),
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];
                  return (message.fromWho == FromWho.hers)
                      ? HerMessageBubble(
                          message: message.text, urlGif: message.imageUrl)
                      : MyMessageBubble(message: message.text);
                },
              ),
            ),
            MessageFieldBox(onValue: chatProvider.sendMessage),
          ],
        ),
      ),
    );
  }
}
