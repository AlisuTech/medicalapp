import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginViewModel {
  String email = "";
  String FullName = "";
  String Address = "";
  String password = "";

  Future createUser(BuildContext context) async {
    var auth = FirebaseAuth.instance;

    var user = await auth.createUserWithEmailAndPassword(
        email: email, password: password);

    FirebaseFirestore.instance.collection('users').doc(user.user!.uid).set({
      "fullname": FullName,
      "Address": Address,
      "email":email,
      "uid":user.user!.uid
    });
    showModalBottomSheet(context: context, builder: (builder)=>const Center(child: Text("User successfully created"),));
  }
  Future signInUser(BuildContext context) async {
    var auth = FirebaseAuth.instance;

    var user = await auth.signInWithEmailAndPassword(
        email: email, password: password);

    var firestoreuser= await FirebaseFirestore.instance.collection('users').doc(user.user!.uid).get();
    print(firestoreuser);

    // showModalBottomSheet(context: context, builder: (builder)=>const Center(child: Text("User successfully created"),));
  }
}
