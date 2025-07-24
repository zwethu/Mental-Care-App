import 'package:flutter/material.dart';

class ConversationView extends StatefulWidget {
  const ConversationView({super.key});

  @override
  State<ConversationView> createState() => _ConversationViewState();
}

class _ConversationViewState extends State<ConversationView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 16),
      reverse: true,
      itemCount: 20,
      itemBuilder: (widget, count) {
        if (count % 2 == 0) {
          return ChatBotTextWidget(
            sentByChatBot: (count % 2 == 0) ? true : false,
            text: chatText,
            time: "10:30 AM",
          );
        } else {
          return UserTextWidget(
            sentByChatBot: (count % 2 == 0) ? true : false,
            text: chatText,
            time: "10:30 AM",
          );
        }
      },
      separatorBuilder: (context, count) {
        return const SizedBox(height: 12);
      },
    );
  }
}

class ChatBotTextWidget extends StatelessWidget {
  final bool sentByChatBot;
  final String text;
  final String time;
  const ChatBotTextWidget({
    super.key,
    required this.sentByChatBot,
    required this.text,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Icon(Icons.computer_rounded),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(right: 36),
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(16),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      time,
                      style: const TextStyle(),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

String chatText =
    "Hello! I'm your AI health assistant. I'm here to help answer your health-related questions and provide general wellness guidance. How can I assist you today?";

class UserTextWidget extends StatelessWidget {
  final bool sentByChatBot;
  final String text;
  final String time;
  const UserTextWidget({
    super.key,
    required this.sentByChatBot,
    required this.text,
    required this.time,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 48),
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(0),
                  ),
                  color: Colors.green,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      text,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      time,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                )),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}
