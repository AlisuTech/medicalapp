import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/screens/appointment.dart';
import 'package:medicalapp/screens/doctor.dart';
import 'package:medicalapp/screens/mainhome.dart';
import 'package:medicalapp/screens/messages.dart';
import 'package:medicalapp/screens/settings.dart';
import 'package:medicalapp/services/colorlog.dart';
import 'package:uuid/uuid.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            Image.asset(
              'images/face.png',
              height: 80,
              width: 80,
              fit: BoxFit.contain,
            ),
            InkWell(
                onTap: () async {
//Creating Data in Firebase from Flutter

print("started creating user");

var firestore=FirebaseFirestore.instance;

var usersCollection=firestore.collection("newusers");
var uid=const Uuid().v1();

await usersCollection.doc(uid).set({
  "name":"Ekezie Nanette",
  "email":"nanette@gmail.com",
  "state":"Imo State",
  "uid":uid
});


//Updating Existing Users

await usersCollection.doc("28fdd4e0-465d-11ed-be4b-27562e698a7f").set({
  "name":"Pearl Ekezie",
  "address":"Rumuodara",
  "gender":"male"
},SetOptions(merge:true ));


//Reading Data

var allData=await usersCollection.get();
var actualData=allData.docs.map((e)=>e.data());
print(actualData);
print("Done creating user");


//Delete Data from Firebase
await usersCollection.doc("0d27d310-465d-11ed-bf28-e5af293557b6").delete();

//Get Single Data
var user=await usersCollection.doc("0d27d310-465d-11ed-bf28-e5af293557b6").get();
print(user.data());

    // final CollectionReference users = FirebaseFirestore.instance.collection("users");
    // users.doc("newuserdoc").set({
    //   "name":"david",
    //   "email":'david@ymail.com',
    //   "state":"rivers"
    // });
    // var allUsers=await users.get();
    // print(allUsers.docs.map((e) => e.data()));
              //     var auth = FirebaseAuth.instance;
              //     auth.signInAnonymously();

              //     //auth.createUserWithEmailAndPassword(email: 'Chibuzor@gmail.com', password: 'chibuzor001');

              //     auth.createUserWithEmailAndPassword(email: 'Franklin@gmail.com', password: 'onetwothree');
              //     try {
              //       var response = await auth.signInWithEmailAndPassword(
              //           email: 'Franklin@gmail.com', password: 'onetwothree');
              //            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //     content: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Text("SignIn Successful", style: TextStyle(fontSize: 30, color: Colors.blue),),
              //   ),
              //   duration: Duration(seconds: 2),
              // ));
              //     } on FirebaseAuthException catch (e) {
              //       print(e.message);
              //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //   content: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Text("Invalid Password Young Man", style: TextStyle(fontSize: 30, color: Colors.white),),
              //   ),
              //   duration: Duration(seconds: 2),
              // ));
              //     }
                },
                child: Icon(Icons.login, color: Colors.black, size: 60))
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
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: IndexedStack(
          index: currentIndex,
          children: const [
            MainHomePage(),
            Messages(),
            AppointmentPage(),
            AppointmentPage(),
            // Settings(),
          ],
        ));
  }
}
