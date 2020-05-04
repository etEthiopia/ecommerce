import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _cPasswordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  String gender;
  String groupValue = "male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Register to FashApp"),
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Colors.red.withOpacity(0.2),
      ),
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
              padding: EdgeInsets.only(top: 150.0),
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
                                  hintText: "Full Name",
                                  icon: Icon(Icons.account_box),
                                  isDense: true),
                              keyboardType: TextInputType.text,
                              controller: _nameController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "The Full Name cannot be empty";
                                } else if (value.length < 4) {
                                  return "The Name length must be at least four";
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
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: ListTile(
                                  title: Text(
                                    "Male",
                                    textAlign: TextAlign.right,
                                  ),
                                  trailing: Radio(
                                    groupValue: groupValue,
                                    value: "male",
                                    activeColor: Colors.red,
                                    onChanged: (e) {
                                      radioValueChanged(e);
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: Text(
                                    "Female",
                                    textAlign: TextAlign.right,
                                  ),
                                  trailing: Radio(
                                    groupValue: groupValue,
                                    value: "female",
                                    activeColor: Colors.red,
                                    onChanged: (e) {
                                      radioValueChanged(e);
                                    },
                                  ),
                                ),
                              )
                            ],
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
                                  hintText: "Email",
                                  icon: Icon(Icons.mail),
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
                                  isDense: true),
                              controller: _passwordController,
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
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
                        child: Material(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white.withOpacity(0.8),
                          elevation: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 4.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Confirm Password",
                                  icon: Icon(Icons.lock),
                                  isDense: true),
                              controller: _cPasswordController,
                              obscureText: true,
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
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 0.0),
                              child: Text("Sign Up"),
                            )),
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
    );
  }

  void radioValueChanged(e) {
    setState(() {
      groupValue = e;
      gender = e;
    });
  }
}
