import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/models/chatmodel.dart';
import 'package:medicalapp/screens/chatpage.dart';
import 'package:medicalapp/services/colorlog.dart';
import 'package:medicalapp/services/userservice.dart';
import 'package:medicalapp/viewmodels/contactviewmodel.dart';

import '../models/usermodel.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
                itemBuilder: (context, index) {
                  final item = contacts[index];
                  return Column(
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
                        subtitle: Text(item.aboutMe),
                      ),
                      Divider(
                        color: Color.fromARGB(255, 194, 190, 190),
                        height: 0.7,
                      )
                    ],
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
