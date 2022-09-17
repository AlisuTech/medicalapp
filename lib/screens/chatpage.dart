import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/models/chatmodel.dart';

class ChatPage extends StatefulWidget {
 ChatPage({Key? key,required this.chatmodel}) : super(key: key);
ChatModel chatmodel;
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 228, 227),
      appBar:AppBar(
        toolbarHeight: 100,
        shadowColor: Colors.transparent,
        leading: GestureDetector(child: Icon(Icons.arrow_back,size: 30,color: Colors.black,),onTap: (){
          Navigator.pop(context);
        },),
        title: ListTile(
          leading: SizedBox(
            height: 50,
            width: 50,
            child: Stack(
              children: [
                ClipOval(child: Image.asset(widget.chatmodel.image)),
                Align(child: Icon(Icons.circle,size: 10,color: Colors.green,),
                alignment: Alignment.bottomRight,)
              ],
            )),
          title: Text(widget.chatmodel.username),
          subtitle: Text("online"),
        ),
        actions: [
          Icon(Icons.video_call, size: 40,color: Colors.grey,),
          Padding(
            padding: EdgeInsets.fromLTRB(20,0,20,0),
            child: Icon(Icons.call, size: 40,color: Colors.grey,),
          ),
        ],
        backgroundColor: Colors.white,
        ),
        body: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 120,
                  padding:EdgeInsets.all(30),
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                  ),
                  child:  Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(children: []),
                  
                ),
                  
                  
                ),
              )
            ],

        ),
    );
  }
}