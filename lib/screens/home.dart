import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/services/colorlog.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions:const[Icon(Icons.account_circle,size: 60,color: primaryColor)] ,
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        shadowColor: Colors.transparent,
        title: const Text("Hello, David Ohaneje",style: TextStyle(color: Colors.black,fontSize: 35),maxLines: 1,overflow: TextOverflow.ellipsis,),
        centerTitle: false,
      
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.message_sharp),label: "Messages"),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today),label:"Schedule"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
      ],showSelectedLabels: true,showUnselectedLabels: true,selectedItemColor: primaryColor,unselectedItemColor: Colors.black45,
      iconSize: 30,),
      body: Column(
        children: [
          Container(
            color:const Color.fromRGBO(244,245,249,1),
            child: Row(
              children: [
                 Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: size.width*0.4,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                    SizedBox(
                      width: 60,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: const [
                           Align(
                            alignment: Alignment.center,
                            child: Icon(Icons.circle,size: 50,color: Colors.white,)),
                         Align(
                            alignment: Alignment.center,
                            child: Icon(Icons.add,size: 30,color: primaryColor,)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0,30,0,5),
                      child: Text("Clinic Visit",style:TextStyle(color: Colors.white,fontSize:17,fontWeight: FontWeight.bold)),
                    ),
                    const Text("Make an appointment",style:TextStyle(color: Colors.white)),
                  ]),
                ),
                 Container(
                  width: size.width*0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                    SizedBox(
                      width: 60,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: const [
                           Align(
                            alignment: Alignment.center,
                            child: Icon(Icons.circle,size: 50,color: Color.fromRGBO(240,238,250,1),)),
                         Align(
                            alignment: Alignment.center,
                            child: Icon(Icons.home,size: 30,color: primaryColor,)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0,30,0,5),
                      child: Text("Home Visit",style:TextStyle(color: Colors.black,fontSize:17,fontWeight: FontWeight.bold)),
                    ),
                    const Text("Call doctor at home",style:TextStyle(color: Colors.black)),
                  ]),
                ),
              ],
            ),
          )
        ]
        ),
    );
  }
}