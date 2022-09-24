import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/models/usermodel.dart';
import 'package:medicalapp/screens/doctor.dart';
import 'package:medicalapp/services/colorlog.dart';
import 'package:medicalapp/viewmodels/contactviewmodel.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final viewModel=ContactViewModel();
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder<List<UserModel>>(
              future: viewModel.getContacts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var data=snapshot.data!;
                  return CarouselSlider(
                    items: data.map((e) => 
                    ClipOval(
                      child: Image.asset(e.displayPicture),
                    )
                    ).toList(),
                    options: CarouselOptions(
                      initialPage: 3,
                      enableInfiniteScroll: true,
                      pageSnapping: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 1)
                    )
                    );
                }
                else{
                  return const Center(child: Text("Loading..."));
                }
              }
            ),
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
          ), Container(
            color: Colors.white,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                onTap: (){
                  Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("You Tapped on Dr. Viola"),
      ));
     Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const DoctorPage()));
                },
                child: Container(
                  width: size.width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: const Offset(3, 5))
                    ],
                  ),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'images/face2.png',
                        height: 80,
                        width: 80,
                        fit: BoxFit.contain,
                      ),
                      const Text(
                        "Dr. Viola Dunn",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "Pediatrician",
                          style: TextStyle(color: Colors.black38),
                        ),
                      ),
                      Container(
                        width: size.width * 0.15,
                        padding:const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 246, 214, 225),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.yellow.shade700,
                            ),
                            const Text(
                              "4.9",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: primaryColor,
                onTap: (){
                  Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("You Tapped on Dr. Chris Frazier"),
      ));
      Navigator.pushNamed(context, "/doctor");
                },
                child: Container(
                  width: size.width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: const Offset(2, 5))
                    ],
                  ),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/face.png',
                        height: 80,
                        width: 80,
                        fit: BoxFit.contain,
                      ),
                      const Text(
                        "Dr. Chris Frazier",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: const Text("Therapist",
                            style: TextStyle(color: Colors.black38)),
                      ),
                      Container(
                        width: size.width * 0.15,
                        padding: EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 246, 214, 225),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.yellow.shade700,
                            ),
                            Text(
                              "5.0",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Container(
            color: Colors.white,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: const Offset(3, 5))
                  ],
                ),
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                margin: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/face2.png',
                      height: 80,
                      width: 80,
                      fit: BoxFit.contain,
                    ),
                    const Text(
                      "Dr. Laura Amadi",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: const Text(
                        "Pediatrician",
                        style: TextStyle(color: Colors.black38),
                      ),
                    ),
                    Container(
                      width: size.width * 0.15,
                      padding: EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 246, 214, 225),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.yellow.shade700,
                          ),
                          Text(
                            "5.0",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: const Offset(2, 5))
                  ],
                ),
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                margin: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/face.png',
                      height: 80,
                      width: 80,
                      fit: BoxFit.contain,
                    ),
                    const Text(
                      "Dr. Chizy Aruah",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding:  EdgeInsets.all(5),
                      child: Text("Therapist",
                          style: TextStyle(color: Colors.black38)),
                    ),
                    Container(
                      width: size.width * 0.15,
                      padding:const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 246, 214, 225),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.yellow.shade700,
                          ),
                          const Text(
                            "4.6",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
          )
        
        ]),
    );
  }
}