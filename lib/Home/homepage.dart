import 'package:flutter/material.dart';
import 'package:flutter_application_new_project/componant/Drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 2,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "asstes/12.png",
                  width: 60,
                  height: 55,
                ),
                Text(
                  "| عباس افندى",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ))
            ],
            leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState.openDrawer();
                },
                icon: Icon(
                  Icons.notes,
                  color: Colors.black,
                )),
          ),
          drawer: Drawer(),
          body: Container(),
        ),
      ),
    );
  }
}

class scaffoldState {}
