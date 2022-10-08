import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/models/chatmodel.dart';
import 'package:medicalapp/screens/chatpage.dart';
import 'package:medicalapp/services/colorlog.dart';

import 'contact.dart';
import 'contacts2.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    final chats=ChatService.getChats();
    chats.sort((a,b)=>b.dateTime.compareTo(a.dateTime));
    return  Stack(
      children: [

        ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index){
              final item=chats[index];
              return Column(
                children: [
                  ListTile(
                    onTap: (){
                      // Navigator.pushNamed(context, "/doctor");
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChatPage(chatmodel:item)));
                    },
                    leading: Image.asset(item.image),
                    title: Text(item.username),
                    subtitle: Text(item.message),
                    trailing: Text(item.dateTime.toString()),
                  ),
                  Divider(color: Color.fromARGB(255, 194, 190, 190),height: 0.7,)
                ],
              );
            },
          ),
        Positioned(
          right: 0,
          bottom:0,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,0,20,20),
            child: GestureDetector(
              child: Icon(Icons.add_circle,size: 70,color: primaryColor,),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Contact2Page()));
              },),
          ),
        )
      
      ],
    );
  }
}