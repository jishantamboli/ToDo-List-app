import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  final _FormKey = GlobalKey<FormState>();
  String? username = "Jishan Tamboli";
  String? email = "Jishantamboli2002@gmail.com";
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          // backgroundColor: Colors.red,
          title: "Account".text.color(Colors.white).xl2.semiBold.make(),
        ),
        body: Material(
            color: Colors.white,
            child: Form(
                key: _FormKey,
                child: Column(children: [
                  //  Image.asset("assets/images/AccountImage.jpg"),
                  CircleAvatar(
                    radius: 70,
                    backgroundImage:
                        AssetImage("assets/images/AccountImage.jpg"),
                  ).py16(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 35, horizontal: 16),
                    child: Column(
                      children: [
                        TextFormField(
                          initialValue: 'Jishan Tamboli',
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                            // hintText: "Enter Username",
                            // labelText: username,
                          ),
                        ),
                        SizedBox(height: 25,),
                        TextFormField(
                          initialValue: email,
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                            // hintText: "Enter Password",
                            // labelText: email,
                          ),
                        ),
                        SizedBox(
                          height: 178.0,
                        ),
                        Material(
                          child: Text(
                            "Todo List",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                        ).p8(),
                      ],
                    ),
                  )
                ]))));
  }
  }
