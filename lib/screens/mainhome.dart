import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/services/colorlog.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                width: size.width * 0.4,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 60,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: const [
                            Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.circle,
                                  size: 50,
                                  color: Colors.white,
                                )),
                            Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                  color: primaryColor,
                                )),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
                        child: Text("Clinic Visit",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold)),
                      ),
                      const Text("Make an appointment",
                          style: TextStyle(color: Colors.white)),
                    ]),
              ),
              Container(
                width: size.width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 60,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: const [
                            Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.circle,
                                  size: 50,
                                  color: Color.fromRGBO(240, 238, 250, 1),
                                )),
                            Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.home,
                                  size: 30,
                                  color: primaryColor,
                                )),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
                        child: Text("Home Visit",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold)),
                      ),
                      const Text("Call doctor at home",
                          style: TextStyle(color: Colors.black)),
                    ]),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(10,20,0,0),
          child: Text("What are your Symptoms?",
          style: TextStyle(fontSize: 30),),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
                Container(
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  width: size.width * 0.4,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  child: const Text("Temperature", style: TextStyle(color:Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                  ),
               
                Container(
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  width: size.width * 0.4,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  child: const Text("Snuffle", style: TextStyle(color:Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                  ),
               
                Container(
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  width: size.width * 0.4,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  child: const Text("Headache", style: TextStyle(color:Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                  ),
               
                Container(
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  width: size.width * 0.4,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  child: const Text("Cough", style: TextStyle(color:Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                  ),
               
          ],),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(10,20,0,0),
          child: Text("Popular Doctors",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
        ),
      ]);
  }
}