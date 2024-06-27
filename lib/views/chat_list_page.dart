

import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversations'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
   ZIMKit().showDefaultNewPeerChatDialog(context);
      },child: const Icon(Icons.chat),),
      body: ZIMKitConversationListView(
        onPressed: (context, conversation, defaultAction) {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return ZIMKitMessageListPage(
                conversationID: conversation.id,
                conversationType: conversation.type,
              );
            },
          ));
        },
      ),
    );
  }
}
