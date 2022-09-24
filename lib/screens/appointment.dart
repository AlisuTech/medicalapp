import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppointmentPage extends StatefulWidget {
 const AppointmentPage({Key? key}) : super(key: key);
  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack()
      );
  }


  Widget TopBar(){
    return Stack(
      children: [
        IconButton(
          onPressed: (){
              Navigator.pop(context);
          }, 
          icon: const Icon(Icons.chevron_left, color: Colors.white,)),
          Column(children: const[
            Text("Dr. Viola Dunn"),
            Text("Therapist"),
          ],)
      ],
    );
  }
}