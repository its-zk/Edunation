import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edunation/modules/auth/controller/auth_controller.dart';
import 'package:edunation/modules/home/models/chat_details_model.dart';
import 'package:edunation/routes/routes.dart';
import 'package:edunation/utils/dialogues.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Conversation extends StatelessWidget {
  Conversation({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const AmbassadorDrawer(),
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              scaffoldKey.currentState!.openDrawer();
            },
            child: const Icon(Icons.menu, color: Colors.white)),
        backgroundColor: const Color.fromRGBO(82, 193, 227, 1),
        automaticallyImplyLeading: false,
        title: const Text("Conversations"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('ambassador-student-chat')
                  .where("ambassadorId",
                      isEqualTo:
                          Get.find<AuthController>().currentAmbassador!.uid)
                  .snapshots(),
              builder: (context, snapshot) {
                List<ChatDetailsModel> conversations =
                    snapshot.data?.docs == null
                        ? []
                        : snapshot.data!.docs
                            .map((e) => ChatDetailsModel.fromJson(e.data()))
                            .toList();
                return snapshot.connectionState == ConnectionState.waiting
                    ? Center(
                        child: LoadingAnimationWidget.threeRotatingDots(
                            color: Colors.blue, size: 40),
                      )
                    : ListView.builder(
                        itemCount: conversations.length,
                        itemBuilder: (context, index) {
                          return ConversationTile(
                            name: conversations.elementAt(index).studentName,
                            lastMessage: conversations.elementAt(index).lastMsg,
                            onTap: () {
                              Get.toNamed(Routes.chat,
                                  arguments: conversations.elementAt(index));
                            },
                          );
                        });
              },
            ),
          ),
        ],
      )),
    );
  }
}

class ConversationTile extends StatelessWidget {
  const ConversationTile({
    super.key,
    required this.lastMessage,
    required this.name,
    required this.onTap,
  });
  final String name, lastMessage;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Center(
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          title: Text(
            name,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            lastMessage,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 12),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Divider(
            thickness: 1,
          ),
        ),
      ],
    );
  }
}

class AmbassadorDrawer extends StatelessWidget {
  const AmbassadorDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName:
                Text(Get.find<AuthController>().currentAmbassador!.name),
            accountEmail:
                Text(Get.find<AuthController>().currentAmbassador!.email),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text(
                Get.find<AuthController>().currentAmbassador!.name[0],
                style: const TextStyle(fontSize: 40.0, color: Colors.white),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () async {
              showLoadingDialogue(context: context);
              await Get.find<AuthController>().logout();
              Get.offAllNamed(Routes.welcome);
            },
          ),
        ],
      ),
    );
  }
}
