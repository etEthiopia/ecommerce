import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  SharedPreferences preferences;
  bool loading = false;
  bool isLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Stack(children: <Widget>[
          Image.asset(
            'assets/images/loginpicture.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
              margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/images/logo.png",
                width: 75.0,
              )),
          Container(
              padding: EdgeInsets.only(top: 200.0),
              alignment: Alignment.center,
              child: Center(
                child: Form(
                  key: _formKey,
                  child: Flex(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white.withOpacity(0.8),
                          elevation: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 4.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Email",
                                  icon: Icon(Icons.mail),
                                  border: InputBorder.none,
                                  isDense: true),
                              keyboardType: TextInputType.emailAddress,
                              controller: _emailController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  Pattern pattern =
                                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                  RegExp regex = RegExp(pattern);
                                  if (!regex.hasMatch(value)) {
                                    return 'Enter a valid email';
                                  }
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white.withOpacity(0.8),
                          elevation: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 4.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  icon: Icon(Icons.lock),
                                  border: InputBorder.none,
                                  isDense: true),
                              controller: _passwordController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "The password cannot be empty";
                                } else if (value.length < 6) {
                                  return "The password length must be at least six";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width,
                            onPressed: () {},
                            color: Colors.red,
                            textColor: Colors.white,
                            elevation: 0.8,
                            child: Text("Login")),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Doesn't have an account? ",
                                    style: TextStyle(color: Colors.white)),
                                InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context, "/register");
                                    },
                                    child: Text("Sign Up here",
                                        style: TextStyle(
                                            color: Colors.yellow,
                                            decoration:
                                                TextDecoration.underline)))
                              ],
                            )),
                      ),
                      Divider(),
                      Container(
                        child: Column(
                          children: <Widget>[
                            GoogleSignInButton(
                              splashColor: Colors.red,
                              onPressed: () {
                                handleSignIn();
                              },
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                        ),
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(8.0),
                      ),
                    ],
                    direction: Axis.vertical,
                  ),
                ),
              )),
          Visibility(
              visible: loading ?? true,
              child: Center(
                child: Container(
                    color: Colors.white.withOpacity(0.7),
                    child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.red))),
              )),
        ]),
      ),
      // bottomNavigationBar: Container(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: FlatButton(
      //         color: Colors.red,
      //         onPressed: () {},
      //         child: Text(
      //           "Sign In with Google",
      //           style: TextStyle(color: Colors.white),
      //         )),
      //   ),
      // ),
    );
  }

  @override
  void initState() {
    super.initState();
    isSignedIn();
  }

  void isSignedIn() async {
    // setState(() {
    //   loading = true;
    // });

    // preferences = await SharedPreferences.getInstance();
    // isLoggedIn = await googleSignIn.isSignedIn();
    // if (isLoggedIn) {
    //   Navigator.pushReplacementNamed(context, "/home");
    // }
    // setState(() {
    //   loading = false;
    // });
  }

  Future handleSignIn() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      loading = true;
    });

    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final AuthResult authResult =
        await firebaseAuth.signInWithCredential(credential);
    FirebaseUser firebaseUser = authResult.user;
    if (firebaseUser != null) {
      final QuerySnapshot result = await Firestore.instance
          .collection('users')
          .where("id", isEqualTo: firebaseUser.uid)
          .getDocuments();

      final List<DocumentSnapshot> documents = result.documents;
      if (documents.length == 0) {
        // register the user our collection
        Firestore.instance
            .collection("users")
            .document(firebaseUser.uid)
            .setData({
          "id": firebaseUser.uid,
          "username": firebaseUser.displayName,
          "pic": firebaseUser.photoUrl
        });
        await preferences.setString("id", firebaseUser.uid);
        await preferences.setString("username", firebaseUser.displayName);
        await preferences.setString("pic", firebaseUser.photoUrl);
      } else {
        await preferences.setString("id", documents[0]["id"]);
        await preferences.setString("username", documents[0]["username"]);
        await preferences.setString("pic", documents[0]["pic"]);
      }
      print("LOGIN SUCCESSFUL");
      //Fluttertoast.showToast(msg: "Login Successful");
      setState(() {
        loading = false;
        isLoggedIn = true;
      });
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      print("LOGIN UNSUCCESSFUL");
      //Fluttertoast.showToast(msg: "Login Unsuccessful");
    }
  }
}
