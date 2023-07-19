import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edunation/modules/auth/controller/auth_controller.dart';
import 'package:edunation/modules/home/controller/student_chat_controller.dart';
import 'package:edunation/modules/home/models/chat_details_model.dart';
import 'package:edunation/modules/home/views/university_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class StudentChat extends StatefulWidget {
  const StudentChat({super.key, required this.uniListArgs});
  final UniListArgs uniListArgs;

  @override
  State<StudentChat> createState() => _StudentChatState();
}

class _StudentChatState extends State<StudentChat> {
  final textcontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    Get.find<StudentChatController>().getAmbassador(
        programName: widget.uniListArgs.program,
        universityId: widget.uniListArgs.universityModel.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(82, 193, 227, 1),
        automaticallyImplyLeading: true,
        title: GetBuilder<StudentChatController>(builder: (controller) {
          return Text(
              controller.ambassador == null ? "" : controller.ambassador!.name);
        }),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: GetBuilder<StudentChatController>(builder: (controller) {
              return !controller.isAmbassadorLoaded
                  ? Center(
                      child: LoadingAnimationWidget.threeRotatingDots(
                          color: Colors.blue, size: 40),
                    )
                  : controller.ambassador == null
                      ? const Center(
                          child: Text("An error occured, try again later"),
                        )
                      : Column(
                          children: [
                            Expanded(
                              child: StreamBuilder(
                                stream: FirebaseFirestore.instance
                                    .collection('ambassador-student-chat')
                                    .doc(
                                        "${controller.ambassador!.uid}-${Get.find<AuthController>().currentUser!.uid}")
                                    .collection("chats")
                                    .orderBy('createdAt')
                                    .snapshots(),
                                builder: (context, snapshot) {
                                  List<ChatModel> chats =
                                      snapshot.data?.docs == null
                                          ? []
                                          : snapshot.data!.docs
                                              .map((e) =>
                                                  ChatModel.fromJson(e.data()))
                                              .toList();
                                  return snapshot.connectionState ==
                                          ConnectionState.waiting
                                      ? Center(
                                          child: LoadingAnimationWidget
                                              .threeRotatingDots(
                                                  color: Colors.blue, size: 40),
                                        )
                                      : ListView.builder(
                                          itemCount: chats.length,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 4),
                                              child: BubbleSpecialThree(
                                                text:
                                                    chats.elementAt(index).msg,
                                                color: chats
                                                        .elementAt(index)
                                                        .fromStudent
                                                    ? const Color(0xFF1B97F3)
                                                    : const Color(0xFFE8E8EE),
                                                isSender: chats
                                                    .elementAt(index)
                                                    .fromStudent,
                                                tail: true,
                                                textStyle: TextStyle(
                                                    color: chats
                                                            .elementAt(index)
                                                            .fromStudent
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
                        );
            }),
          ),
          GetBuilder<StudentChatController>(builder: (controller) {
            return controller.ambassador == null
                ? const SizedBox()
                : Padding(
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
                                String ambassadorId =
                                    Get.find<StudentChatController>()
                                        .ambassador!
                                        .uid;
                                String studentUid =
                                    Get.find<AuthController>().currentUser!.uid;
                                ChatDetailsModel chatDetailsModel =
                                    ChatDetailsModel(
                                        lastMsg: textcontroller.text.trim(),
                                        ambassadorId: ambassadorId,
                                        studentId: studentUid,
                                        studentName: Get.find<AuthController>()
                                            .currentUser!
                                            .name);
                                ChatModel chatModel = ChatModel(
                                    msg: textcontroller.text.trim(),
                                    fromStudent: true,
                                    createdAt: DateTime.now());
                                textcontroller.clear();
                                FocusManager.instance.primaryFocus?.unfocus();
                                await FirebaseFirestore.instance
                                    .collection('ambassador-student-chat')
                                    .doc("$ambassadorId-$studentUid")
                                    .set(chatDetailsModel.toJson());

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
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1),
                          ),
                        ),
                      ),
                    ),
                  );
          }),
        ],
      )),
    );
  }
}
