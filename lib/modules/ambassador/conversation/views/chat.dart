import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edunation/modules/home/models/chat_details_model.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Chat extends StatelessWidget {
  Chat({super.key, required this.chatDetailsModel});
  final ChatDetailsModel chatDetailsModel;

  final textcontroller = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(82, 193, 227, 1),
        automaticallyImplyLeading: true,
        title: Text(
          chatDetailsModel.studentName,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('ambassador-student-chat')
                        .doc(
                            "${chatDetailsModel.ambassadorId}-${chatDetailsModel.studentId}")
                        .collection("chats")
                        .orderBy('createdAt')
                        .snapshots(),
                    builder: (context, snapshot) {
                      List<ChatModel> chats = snapshot.data?.docs == null
                          ? []
                          : snapshot.data!.docs
                              .map((e) => ChatModel.fromJson(e.data()))
                              .toList();
                      return snapshot.connectionState == ConnectionState.waiting
                          ? Center(
                              child: LoadingAnimationWidget.threeRotatingDots(
                                  color: Colors.blue, size: 40),
                            )
                          : ListView.builder(
                              itemCount: chats.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: BubbleSpecialThree(
                                    text: chats.elementAt(index).msg,
                                    color: !chats.elementAt(index).fromStudent
                                        ? const Color(0xFF1B97F3)
                                        : const Color(0xFFE8E8EE),
                                    isSender:
                                        !chats.elementAt(index).fromStudent,
                                    tail: true,
                                    textStyle: TextStyle(
                                        color:
                                            !chats.elementAt(index).fromStudent
                                                ? Colors.white
                                                : Colors.black,
                                        fontSize: 16),
                                  ),
                                );
                              },
                            );
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: TextFormField(
                controller: textcontroller,
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Type a message";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Type a message...",
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () async {
                      if (formKey.currentState!.validate()) {
                        String ambassadorId = chatDetailsModel.ambassadorId;
                        String studentUid = chatDetailsModel.studentId;
                        ChatDetailsModel chatDetails = ChatDetailsModel(
                            lastMsg: textcontroller.text.trim(),
                            ambassadorId: ambassadorId,
                            studentId: studentUid,
                            studentName: chatDetailsModel.studentName,
                            createdAt: DateTime.now());
                        ChatModel chatModel = ChatModel(
                            msg: textcontroller.text.trim(),
                            fromStudent: false,
                            createdAt: DateTime.now());
                        textcontroller.clear();
                        FocusManager.instance.primaryFocus?.unfocus();
                        await FirebaseFirestore.instance
                            .collection('ambassador-student-chat')
                            .doc("$ambassadorId-$studentUid")
                            .set(chatDetails.toJson());

                        await FirebaseFirestore.instance
                            .collection('ambassador-student-chat')
                            .doc("$ambassadorId-$studentUid")
                            .collection("chats")
                            .doc()
                            .set(chatModel.toJson());
                      }
                    },
                    child: const Icon(
                      Icons.send,
                      color: Colors.blue,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
