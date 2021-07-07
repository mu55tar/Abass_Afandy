import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                child: Column(children: <Widget>[
                  Expanded(
                    child: Form(
                        child: ListView(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 10, top: 30),
                          padding: EdgeInsets.only(right: 20, left: 20),
                          child: Text(
                            "Forget password ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.red[700]),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 30, top: 30),
                          padding: EdgeInsets.only(right: 20, left: 20),
                          child: Text(
                            "please enter your email to receive a link to create a new password via email",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(bottom: 5, top: 10),
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
                        MaterialButton(
                            onPressed: () {},
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                "Send",
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                              margin: EdgeInsets.only(bottom: 10, top: 20),
                              padding: EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                  color: Colors.red[700],
                                  borderRadius: BorderRadius.circular(25.0)),
                            )),
                      ],
                    )),
                  ),
                ]))));
  }
}
