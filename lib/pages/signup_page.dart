import 'package:flutter/material.dart';
import 'package:todoapp/utils/routes.dart';

bool isLoading = true;
final _FormKey = GlobalKey<FormState>();
  String? username;
  String? password;
bool isDone = true;
bool changeButton = false;
bool isAnimating = true;
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

  signToHome(BuildContext context) async {
  if (_FormKey.currentState!.validate()) {
    setState(bool Function() param0) {
      changeButton = true;
    }
    await Future.delayed(Duration(seconds: 01));
    await Navigator.pushNamed(context, MyRoutes.OnboardingRoute);
    setState(() => changeButton = false);
  }
}

class signup extends StatefulWidget {
  @override
  State<signup> createState() => _signupState();
}
class _signupState extends State<signup> {
 var signstyle =
      TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold);
  var sign1style =
      TextStyle(color: Colors.blue, fontSize: 16, );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 85),
          child: Text("Sign-Up"),
        ),
      ),
      body:Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 32.0),
                child: Column(
                  children: [
                    SizedBox(height: 50,),
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
                    
                        return null;
                      },
                    ),
                    SizedBox(height: 20,),
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
                          } 
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Material(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15.0),
                        child: InkWell(
                          onTap: () => signToHome(context),
                          child: Container(
                              width: 120,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                "Sign-Up",
                                style: signstyle,
                              )),
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
                      height: 20.0,
                    ),
                    Text("Or"),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("User another method ? "),
                        GestureDetector(
                          // onTap: () => Navigator.pushNamed(context, MyRoutes.SignupRoute),
                          child: Text(
                            "SignUp",
                            style: sign1style,
                          ),
                        )
                      ],
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Container(
                    //     width: 120,
                    //     height: 40,
                    //     decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         border: Border.all(width: 1, color: Colors.grey),
                    //         borderRadius:
                    //             BorderRadius.all(Radius.circular(32))),
                    //     child: TextButton(
                    //         onPressed: () => Navigator.pushNamed(context, MyRoutes.OnboardingRoute),
                    //         child: Text(
                    //           "Skip for now ",
                    //           style: TextStyle(
                    //             color: Colors.grey,
                    //           ),
                    //         ))
                        // ElevatedButton(
                        //     onPressed: () => HomePage(),
                        //     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(90))),
                        //     child: Text(
                        //       "Skip for now ",
                        //       style: TextStyle(color: Colors.grey,),
                        //     )),
                        // )
                  ],
                ),
              )
      
    );
  }
}