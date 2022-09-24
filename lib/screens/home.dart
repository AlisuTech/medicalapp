import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/screens/appointment.dart';
import 'package:medicalapp/screens/doctor.dart';
import 'package:medicalapp/screens/mainhome.dart';
import 'package:medicalapp/screens/messages.dart';
import 'package:medicalapp/screens/settings.dart';
import 'package:medicalapp/services/colorlog.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Image.asset('images/face.png',height: 80,width: 80,fit: BoxFit.contain,)
        ],
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        shadowColor: Colors.transparent,
        title: const Text(
          "Hello, David Ohaneje",
          style: TextStyle(color: Colors.black, fontSize: 35),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        centerTitle: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_sharp), label: "Messages"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: "Schedule"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.black45,
        iconSize: 30,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
      ),
      body: IndexedStack(
        index: currentIndex,
        children: const [
          MainHomePage(),
          Messages(),
          AppointmentPage(),
          Settings(),
        ],
      ));
  }
}
