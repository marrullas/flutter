import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_buble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

import '../../../domain/entities/message.dart';
import '../../providers/chat_provider.dart';
import '../../widgets/chat/user_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/474x/43/d3/57/43d357652634907fd265991b38010f62--symbols-emoticons-homer-simpson.jpg')),
        ),
        title: const Text('Chat'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<ChatProvider>(); //genera una instancia de chatProvider para poder acceder a los mensajes

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messagesList.length,
                itemBuilder: (context, index) {

                  final message = chatProvider.messagesList[index];

                  if (message.type == MessageType.sent) {
                    return MyMessageBuble(message: message,);
                  } else {
                    return UserMessageBubble(message: message);
                  }

                  
                },
              ),
            ),
            const Divider(height: 1.0),
            MessageFieldBox(
              //onValue: (value) => chatProvider.sendMessage(value), //forma larga de hacerlo
              onValue: chatProvider.sendMessage, //forma corta de hacerlo
            )
          ],
        ),
      ),
    );
  }
}
