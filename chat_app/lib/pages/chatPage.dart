import 'package:flutter/material.dart';
import 'package:scholar_chat/constants.dart';
import 'package:scholar_chat/widgets/customChatBubble.dart';

class chatPage extends StatelessWidget {
  const chatPage({super.key});

  static String id = "ChatPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              kAppMainImage,
              height: 50,
            ),
            Text("Scholar Chat")
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return customChatBubble();
          }),
    );
  }
}