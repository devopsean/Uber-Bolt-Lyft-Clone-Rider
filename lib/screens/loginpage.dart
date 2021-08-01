import 'package:cab_rider/brand_colors.dart';
import 'package:cab_rider/screens/mainpage.dart';
import 'package:cab_rider/screens/registrationpage.dart';
import 'package:cab_rider/widgets/ProgressDialog.dart';
import 'package:cab_rider/widgets/TaxiButton.dart';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io' show Platform;

class LoginPage extends StatefulWidget {
  static const String id = 'login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // login();
  }
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  void showSnackBar(String title) {
    final snackbar = SnackBar(
      content: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
    );
    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  void login() async {
    //show dialog
    showDialog(
      context: context,
      builder: (BuildContext context) => ProgressDialog(
        status: 'Loggin you in',
      ),
    );
    final UserCredential result = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: "seank@yahoo.com", password: "aaaaaaaaaa")
        .catchError((ex) {
      Navigator.pop(context);
      PlatformException thisEx = ex;
      showSnackBar(thisEx.message);
    });
    User user = result.user;
    if (user != null) {

      //verify login

      DatabaseReference userRef =
          FirebaseDatabase.instance.reference().child('users/${user.uid}');
      //print(userRef);
      userRef.once().then((DataSnapshot snapshot) {
        if (snapshot.value != null) {

          Navigator.pushNamedAndRemoveUntil(
              context, MainPage.id, (route) => false);
        }
      });
    } else {

    }
    //any need for this second exception? diff btw two

    // final UserCredential result = await _auth
    //     .signInWithEmailAndPassword(
    //   email: emailController.text,
    //   password: passwordController.text,
    // )
    //     .catchError((ex) {
    //   //check errors and display message
    //   PlatformException thisEx = ex;
    //
    //   showSnackBar(thisEx.message);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 70,
                ),
                Image(
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  image: AssetImage('images/logo.png'),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Sign in as a Rider',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontFamily: 'Brand-Bold'),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email address',
                          labelStyle: TextStyle(
                            fontSize: 14,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        //  keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontSize: 14,
                            ),
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 10)),
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TaxiButton(
                        title: 'LOGIN',
                        color: BrandColors.colorGreen,
                        onPressed: () async {
//check for Network

                          // var connectivityResult =
                          //     await Connectivity().checkConnectivity();
                          // if (connectivityResult != ConnectivityResult.mobile &&
                          //     connectivityResult != ConnectivityResult.wifi) {
                          //   showSnackBar('No internet connection');
                          //   return;
                          // }
                          // if (!emailController.text.contains('@')) {
                          //   showSnackBar('Please enter a valid email address');
                          //   return;
                          // }
                          // if (passwordController.text.length < 8) {
                          //   showSnackBar(
                          //       'Please enter a valid password of 8 cahr');
                          //   return;
                          // }
                          login();
                        },
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, RegistrationPage.id, (route) => false);
                  },
                  child: Text('Don\'t have an account? sign up here'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
