import 'package:firebase_database/firebase_database.dart';

class UserCL {
  String fullName;
  String email;
  String phone;
  String id;

  UserCL({this.id, this.phone, this.email, this.fullName});
  UserCL.fromSnapshot(DataSnapshot snapshot) {
    id = snapshot.key;
    phone = snapshot.value['phone'];
    email = snapshot.value['email'];
    fullName = snapshot.value['fullname'];
  }
}
