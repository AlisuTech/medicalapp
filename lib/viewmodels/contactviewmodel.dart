import 'package:medicalapp/models/usermodel.dart';

class ContactViewModel{
  Future<List<UserModel>> getContacts()async{
    await Future.delayed(const Duration(seconds: 5));
    return [
      // UserModel(1, "Edafe David", "images/face.png", "Naruto Shippuden Lover"),
      UserModel(2, "Chimaobim Godswill", "images/face2.png", "Website Development Enthusiasts"),
      UserModel(3, "Onyedikachi Franklin", "images/face.png", "Fresh boy from UNN"),
      UserModel(4, "Nwachukwu Ifeanyi", "images/face2.png", "Busy"),
      UserModel(5, "Kings Loveday", "images/face.png", "Movies King"),
    ];
  }
}