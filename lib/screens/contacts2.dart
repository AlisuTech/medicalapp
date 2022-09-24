import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/models/chatmodel.dart';
import 'package:medicalapp/screens/chatpage.dart';
import 'package:medicalapp/services/colorlog.dart';
import 'package:medicalapp/services/userservice.dart';
import 'package:medicalapp/viewmodels/contactviewmodel.dart';

import '../models/usermodel.dart';

class Contact2Page extends StatefulWidget {
  const Contact2Page({Key? key}) : super(key: key);

  @override
  State<Contact2Page> createState() => _Contact2PageState();
}

class _Contact2PageState extends State<Contact2Page> {
  final viewModel = ContactViewModel();
  @override
  Widget build(BuildContext context) {
    // final chats = ChatService.getChats();
    // chats.sort((a, b) => b.dateTime.compareTo(a.dateTime));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Contacts",
          style: TextStyle(fontSize: 30),
        ),
        toolbarHeight: 60,
      ),
      body: FutureBuilder<List<UserModel>>(
          future: viewModel.getContacts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final contacts=snapshot.data!;
              return ListView.builder(
                itemCount: contacts.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final item = contacts[index];
                  return Container(
                    width: 100,
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {
                            var currentUser=UserService.getCurrentUser();

                            // Navigator.pushNamed(context, "/doctor");
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ChatPage(chatmodel: ChatModel.chat(currentUser.id, item.id))));
                          },
                          leading: Image.asset(item.displayPicture),
                          title: Text(item.name),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
            else if(snapshot.hasError){
              return const Center(
                child: Text("An Error Occurred", style: TextStyle(color: Colors.black, fontSize: 13),),
              );
            }
            else{
              return const Center(
                child: Text("Loading", style: TextStyle(color: Colors.black, fontSize: 13),),
              );
            }
          }),
    );
  }
}
