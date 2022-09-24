import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/services/colorlog.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          TopBar(),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomBar())
        ],
      )
      );
  }

  Widget TopBar(){
    return Stack(
      children: [
        IconButton(
          onPressed: (){
              Navigator.pop(context);
          }, 
          icon: const Icon(Icons.chevron_left, color: Colors.white,size: 25,)),
          Align(
            alignment: Alignment.center,
            child: Column(children:[
                ClipOval(
                  child: Image.asset(
                    'images/face2.png',
                    height: 80,
                    width: 80,
                    fit: BoxFit.contain,
                  ),
                ), 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Dr. Viola Dunn", style: TextStyle(color: Colors.white),),
              ),
              Text("Therapist", style: TextStyle(color: Colors.white)),
            ],),
          ),
          Align(
            alignment: Alignment.topRight,
            child: 
        IconButton(
          onPressed: (){
              Navigator.pop(context);
          }, 
          icon: const Icon(Icons.more_vert,color: Colors.white,size: 25,)),
          )
      ],
    );
  }
  Widget BottomBar(){
    var size=MediaQuery.of(context).size;
    return Container(
      height: size.height*0.6,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20)),
        )
    );
  }
}