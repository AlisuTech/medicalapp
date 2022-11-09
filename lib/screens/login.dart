import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/screens/home.dart';

import '../viewmodels/loginviewmodel.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final viewModel = LoginViewModel();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          width: size.width * 0.8,
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    child: Text(
                      "Hello Again!",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 20, 40, 30),
                      child: Text(
                        "You can login with a valid email and pasword or by using a Google mail account",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
              Form(
                // key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Email',
                          ),
                          validator: (String? value) {
                            if (value!.length > 3) {
                              return 'Invalid password';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            viewModel.email = value;
                          },
                          // onEditingComplete: (){
                          //   print("completed");
                          // },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
                          child: TextFormField(
                            onChanged: (value) {
                              viewModel.FullName = value;
                            },
                            decoration: const InputDecoration(
                              hintText: 'FullName',
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
                          child: TextFormField(
                            onChanged: (value) {
                              viewModel.Address = value;
                            },
                            decoration: const InputDecoration(
                              hintText: 'Address',
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 16.0),
                    //   child: ElevatedButton(
                    //     onPressed: () {
                    //       // Validate will return true if the form is valid, or false if
                    //       // the form is invalid.
                    //       if (_formKey.currentState!.validate()) {
                    //         // Process data.
                    //       }
                    //     },
                    //     child: const Text('Submit'),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Form(
                  // key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
                              child: TextFormField(
                                onChanged: (value) {
                                  viewModel.password = value;
                                },
                                obscureText: true,
                                decoration: const InputDecoration(
                                  hintText: 'Password',
                                ),
                                // validator: (String? value) {
                                //   if (value == null || value.isEmpty) {
                                //     return 'Please enter some text';
                                //   }
                                //   return null;
                                // },
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Text(
                                  "Remember Me!",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(270, 10, 0, 0),
                                child: Text(
                                  "Recovery Password",
                                  style: TextStyle(fontSize: 18),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(vertical: 16.0),
                      //   child: ElevatedButton(
                      //     onPressed: () {
                      //       // Validate will return true if the form is valid, or false if
                      //       // the form is invalid.
                      //       if (_formKey.currentState!.validate()) {
                      //         // Process data.
                      //       }
                      //     },
                      //     child: const Text('Submit'),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                    child: Container(
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(120, 15, 10, 15),
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    viewModel.createUser(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 8),
                    child: Container(
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                              child: Icon(
                                Icons.mail,
                                size: 30,
                              ),
                            ),
                            Text(
                              "Sign in",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 58, 56, 56),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                ),
              ),
              Container(
                color: Colors.grey,
                height: 100,
                width:size.width,
                child: CustomPaint(
                  painter: NewPainter(const Size(20,30)),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class NewPainter extends CustomPainter{
  Size size;
  NewPainter(this.size);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint=Paint();
    paint.color=Colors.blue;
    // canvas.drawRect(Rect.fromCenter(center: const Offset(100,200), width: 50, height: 50), paint);
    var path=Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, 2*size.height);
    path.lineTo(0, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}