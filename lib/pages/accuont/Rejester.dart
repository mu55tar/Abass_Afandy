import 'package:flutter/material.dart';
import 'package:flutter_application_new_project/pages/accuont/loginscreen.dart';

class RejesterScreen extends StatefulWidget {
  const RejesterScreen({Key key}) : super(key: key);

  @override
  _RejesterScreenState createState() => _RejesterScreenState();
}

class _RejesterScreenState extends State<RejesterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        backgroundColor: Colors.grey[300],
        body: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Form(
                    child: ListView(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 20, left: 20),
                          child: Text(
                            "Create your ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.red[700]),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 30),
                          padding: EdgeInsets.only(right: 20, left: 20),
                          child: Text(
                            " Accuont",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.red[700]),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.only(right: 20, left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25.0)),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Username",
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.only(right: 20, left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25.0)),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                            ),
                            validator: (String value) {
                              if (value.isEmpty ||
                                  value.indexOf(".") == -1 ||
                                  value.indexOf("@") == -1) {
                                return "pleas enter your email";
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.only(right: 20, left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25.0)),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                            ),
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            validator: (String value) {
                              if (value.isEmpty || value.length < 8) {
                                return "pleas enter your password";
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.only(right: 20, left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25.0)),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Phone",
                            ),
                            keyboardType: TextInputType.phone,
                            validator: (String value) {
                              if (value.isEmpty || value.length < 11) {
                                return "pleas enter your phone number";
                              }
                            },
                          ),
                        ),
                        MaterialButton(
                            onPressed: () {},
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                              margin: EdgeInsets.only(bottom: 10, top: 30),
                              padding: EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                  color: Colors.red[700],
                                  borderRadius: BorderRadius.circular(30.0)),
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Already an account ?  ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            GestureDetector(
                              child: Text(
                                "sign in",
                                style: TextStyle(
                                    color: Colors.red[700],
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
