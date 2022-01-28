import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todoapp/pages/appBars.dart';
import 'package:todoapp/pages/bottomNavigation.dart';
import 'package:todoapp/pages/fab.dart';
import 'package:todoapp/pages/onboarding.dart';
import 'package:todoapp/pages/profile.dart';
import 'package:todoapp/pages/util.dart';
import 'package:todoapp/utils/routes.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final bottomNavigationBarIndex = 0;
   bool check = false;
   bool check1 = false;
   bool check2 = false;
   bool check3 = false;
   bool check4 = false;
   bool check5 = false;
   bool check6 = false;
   bool check7 = false;
   bool check8 = false;

  @override
  Widget build(BuildContext context) {
    var hellostyle = TextStyle(
        color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold);
    var userstyle = TextStyle(
        color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold);
    String task = "hello";
    // bool check = false;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("ToDo List App"),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () =>
                Navigator.pushNamed(context, MyRoutes.profileRoute),
            icon: Icon(
              Icons.account_circle,
              size: 42,
            ),
          )),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, left: 20, bottom: 15),
              child: Text(
                'Today',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: CustomColors.TextSubHeader),
              ),
            ),
            Dismissible(
              key: Key(''),
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
                padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Checkbox(
                    splashRadius: 3,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                      value: check,
                      onChanged: (check) {
                        setState(() {
                          this.check = check!;
                        });
                      }),
                    // Image.asset('assets/images/checked.png'),
                    Text(
                      '07.00 AM',
                      style: TextStyle(color: CustomColors.TextGrey),
                    ),
                    Container(
                      width: 180,
                      child: check ? Text(
                        'Go jogging with Christin',
                        style: TextStyle(
                            color: CustomColors.TextGrey,
                            //fontWeight: FontWeight.w600,
                            decoration: TextDecoration.lineThrough),
                      ): Text(
                      'Go jogging with Christin',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                    ),
                    Image.asset('assets/images/bell-small.png'),
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.015, 0.015],
                    colors: [CustomColors.YellowIcon, Colors.white],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColors.GreyBorder,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                ),
              ),
            ),
            // Slidable(
            //   // actionPane: SlidableDrawerActionPane(),
            //   // actionExtentRatio: 0.25,
            //   child: Container(
            //     margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
            //     padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: <Widget>[
            //         Image.asset('assets/images/checked-empty.png'),
            //         Text(
            //           '08.00 AM',
            //           style: TextStyle(color: CustomColors.TextGrey),
            //         ),
            //         Container(
            //           width: 180,
            //           child: Text(
            //             'Send project file',
            //             style: TextStyle(
            //                 color: CustomColors.TextHeader,
            //                 fontWeight: FontWeight.w600),
            //           ),
            //         ),
            //         Image.asset('assets/images/bell-small.png'),
            //       ],
            //     ),
            //     decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //         stops: [0.015, 0.015],
            //         colors: [CustomColors.GreenIcon, Colors.white],
            //       ),
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(5.0),
            //       ),
            //       boxShadow: [
            //         BoxShadow(
            //           color: CustomColors.GreyBorder,
            //           blurRadius: 10.0,
            //           spreadRadius: 5.0,
            //           offset: Offset(0.0, 0.0),
            //         ),
            //       ],
            //     ),
            //   ),
            // secondaryActions: [
            //   SlideAction(
            //     child: Container(
            //       padding: EdgeInsets.only(bottom: 10),
            //       child: Container(
            //         height: 35,
            //         width: 35,
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(50),
            //             color: CustomColors.TrashRedBackground),
            //         child: Image.asset('assets/images/trash.png'),
            //       ),
            //     ),
            //     onTap: () => print('Delete'),
            //   ),
            // ],
            // ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Checkbox(
                    splashRadius: 3,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                      value: check1,
                      onChanged: (check1) {
                        setState(() {
                          this.check1 = check1!;
                        });
                      }),
                  // Image.asset('assets/images/checked-empty.png'),
                  Text(
                    '10.00 AM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  Container(
                    width: 180,
                    child:check1 ? Text(
                        'Meeting with client',
                        style: TextStyle(
                            color: CustomColors.TextGrey,
                            //fontWeight: FontWeight.w600,
                            decoration: TextDecoration.lineThrough),):
                     Text(
                      'Meeting with client',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  
                  Image.asset('assets/images/bell-small-yellow.png'),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.PurpleIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                   Checkbox(
                    splashRadius: 3,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                      value: check2,
                      onChanged: (check2) {
                        setState(() {
                          this.check2 = check2!;
                        });
                      }),
                  // Image.asset('assets/images/checked-empty.png'),
                  Text(
                    '13.00 PM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  Container(
                    width: 180,
                    child:check2 ? Text(
                        'Email client',
                        style: TextStyle(
                            color: CustomColors.TextGrey,
                            //fontWeight: FontWeight.w600,
                            decoration: TextDecoration.lineThrough),):
                     Text(
                      'Email client',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Image.asset('assets/images/bell-small.png'),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.GreenIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 15),
              child: Text(
                'Tomorrow',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: CustomColors.TextSubHeader),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                   Checkbox(
                    splashRadius: 3,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                      value: check3,
                      onChanged: (check3) {
                        setState(() {
                          this.check3 = check3!;
                        });
                      }),
                  // Image.asset('assets/images/checked-empty.png'),
                  Text(
                    '07.00 AM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  Container(
                    width: 180,
                    child:check3 ? Text(
                        'Morning yoga',
                        style: TextStyle(
                            color: CustomColors.TextGrey,
                            //fontWeight: FontWeight.w600,
                            decoration: TextDecoration.lineThrough),):
                     Text(
                      'Morning yoga',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Image.asset('assets/images/bell-small.png'),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.YellowIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                   Checkbox(
                    splashRadius: 3,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                      value: check4,
                      onChanged: (check4) {
                        setState(() {
                          this.check4 = check4!;
                        });
                      }),
                  // Image.asset('assets/images/checked-empty.png'),
                  Text(
                    '08.00 AM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  Container(
                    width: 180,
                    child:check4 ? Text(
                        'Sending project file',
                        style: TextStyle(
                            color: CustomColors.TextGrey,
                            //fontWeight: FontWeight.w600,
                            decoration: TextDecoration.lineThrough),): Text(
                      'Sending project file',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Image.asset('assets/images/bell-small.png'),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.GreenIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                   Checkbox(
                    splashRadius: 3,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                      value: check5,
                      onChanged: (check5) {
                        setState(() {
                          this.check5 = check5!;
                        });
                      }),
                  // Image.asset('assets/images/checked-empty.png'),
                  Text(
                    '10.00 AM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  Container(
                    width: 180,
                    child:check5 ? Text(
                        'Meeting with client',
                        style: TextStyle(
                            color: CustomColors.TextGrey,
                            //fontWeight: FontWeight.w600,
                            decoration: TextDecoration.lineThrough),):
                     Text(
                      'Meeting with client',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Image.asset('assets/images/bell-small-yellow.png'),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.PurpleIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                   Checkbox(
                    splashRadius: 3,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                      value: check6,
                      onChanged: (check6) {
                        setState(() {
                          this.check6 = check6!;
                        });
                      }),
                  // Image.asset('assets/images/checked-empty.png'),
                  Text(
                    '13.00 PM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  Container(
                    width: 180,
                    child:check6 ? Text(
                        'Email client',
                        style: TextStyle(
                            color: CustomColors.TextGrey,
                            //fontWeight: FontWeight.w600,
                            decoration: TextDecoration.lineThrough),):
                     Text(
                      'Email client',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Image.asset('assets/images/bell-small.png'),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.GreenIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                   Checkbox(
                    splashRadius: 3,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                      value: check7,
                      onChanged: (check7) {
                        setState(() {
                          this.check7 = check7!;
                        });
                      }),
                  // Image.asset('assets/images/checked-empty.png'),
                  Text(
                    '13.00 PM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  Container(
                    width: 180,
                    child:check7 ? Text(
                        'Meeting with client',
                        style: TextStyle(
                            color: CustomColors.TextGrey,
                            //fontWeight: FontWeight.w600,
                            decoration: TextDecoration.lineThrough),):
                     Text(
                      'Meeting with client',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Image.asset('assets/images/bell-small-yellow.png'),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.PurpleIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                   Checkbox(
                    splashRadius: 3,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                      value: check8,
                      onChanged: (check8) {
                        setState(() {
                          this.check8 = check8!;
                        });
                      }),
                  // Image.asset('assets/images/checked-empty.png'),
                  Text(
                    '13.00 PM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  Container(
                    width: 180,
                    child:check8 ? Text(
                        'Email client',
                        style: TextStyle(
                            color: CustomColors.TextGrey,
                            //fontWeight: FontWeight.w600,
                            decoration: TextDecoration.lineThrough),):
                     Text(
                      'Email client',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Image.asset('assets/images/bell-small.png'),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.GreenIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: customFab(context),
      bottomNavigationBar:
          BottomNavigationBarApp(context, bottomNavigationBarIndex),
    );
  }
}
