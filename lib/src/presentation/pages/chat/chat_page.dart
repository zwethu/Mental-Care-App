import 'package:flutter/material.dart';
import 'package:mental_assistance_app/src/presentation/views/chat/conversation_view.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E7EB),
      appBar: AppBar(
        title: const Text("MentBot"),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 16,
        ),
        child: Column(
          children: [
            const Expanded(
              child: ConversationView(),
            ),
            Container(
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
