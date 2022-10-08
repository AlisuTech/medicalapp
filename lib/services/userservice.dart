import 'package:medicalapp/models/usermodel.dart';

class UserService{
  static UserModel getCurrentUser(){
     return UserModel(1, "Edafe David", "images/face.png", "Naruto Shippuden Lover");
  }
  
}