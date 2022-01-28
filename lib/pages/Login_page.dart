import 'package:flutter/material.dart';
import 'package:todoapp/pages/onboarding.dart';
import 'package:todoapp/pages/util.dart';
import 'package:todoapp/pages/signup_page.dart';
import 'package:todoapp/utils/routes.dart';

bool isDone = true;
bool changeButton = false;
// String? username;
// String? password;
final _FormKey = GlobalKey<FormState>();
bool isLoading = true;
bool isAnimating = true;

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

moveToHome(BuildContext context) async {
  if (_FormKey.currentState!.validate()) {
    setState(bool Function() param0) {
      changeButton = true;
    }
    await Future.delayed(Duration(seconds: 01));
    await Navigator.pushNamed(context, MyRoutes.OnboardingRoute);
    setState(() => changeButton = false);
    // {
    //   changeButton = false;
    // }
  }
}

class Loginpage extends StatefulWidget {
  var defaulttextstyle = TextStyle(color: Colors.grey);
  var linktext = TextStyle(
    color: Colors.blue,
  );
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  var signstyle =
      TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold);
  var sign1style =
      TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Material(
        color: Colors.white,
        child: Form(
          key: _FormKey,
          child: Column(
            children: [
              Image.asset("assets/images/hey.png", fit: BoxFit.cover),
              SizedBox(
                height: 5.0,
              ),
              // Text(
              //   "Welcome",
              //   style: TextStyle(
              //     fontSize: 24,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                      validator: (Uservalue) {
                        if (Uservalue == null || Uservalue.isEmpty) {
                          return "Username Cannot be empty";
                        } else if (Uservalue.length < 6) {
                          return "Username length should be atleast 6 ";
                        }
                         else if (Uservalue != "jishan@gmail.com") {
                          return "Wrong Username";
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password Length should be atleast 6";
                          } else if (value != "jishan") {
                            return "Wrong Password";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Material(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15.0),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 4),
                            child: Container(
                                width: 120,
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  "Login",
                                  style: signstyle,
                                )),
                          ),
                        ),
                      ),
                    ),
                    // Material(

                    //       child: AnimatedContainer(
                    //         duration: Duration(seconds: 0),
                    //         width: 120,
                    //         height: 40,
                    //         alignment: Alignment.center,
                    //         // child: isLoading
                    //         //     ? Row(
                    //         //         mainAxisAlignment: MainAxisAlignment.center,
                    //         //         children: [
                    //         //           CircularProgressIndicator(
                    //         //             color: Colors.red,
                    //         //           ),
                    //         //           SizedBox(
                    //         //             width: 24,
                    //         //           ),
                    //         //           Text("Please Wait...")
                    //         //         ],
                    //         //       )
                    //         //     : Text(
                    //         //         "Login",
                    //         //         style: TextStyle(
                    //         //             color: Colors.white,
                    //         //             fontWeight: FontWeight.bold,
                    //         //             fontSize: 18),
                    //         //       ),
                    //       )),
                    // ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text("Or"),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account? "),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, MyRoutes.SignupRoute),
                          child: Text(
                            "SignUp",
                            style: sign1style,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32))),
                        child: TextButton(
                            onPressed: () => Navigator.pushNamed(context, MyRoutes.OnboardingRoute),
                            child: Text(
                              "Skip for now ",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ))
                        // ElevatedButton(
                        //     onPressed: () => HomePage(),
                        //     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(90))),
                        //     child: Text(
                        //       "Skip for now ",
                        //       style: TextStyle(color: Colors.grey,),
                        //     )),
                        )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
