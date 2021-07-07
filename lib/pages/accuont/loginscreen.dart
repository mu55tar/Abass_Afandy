import 'package:flutter/material.dart';
import 'package:flutter_application_new_project/Home/homepage.dart';
import 'package:flutter_application_new_project/pages/accuont/Rejester.dart';
import 'package:flutter_application_new_project/pages/accuont/forgetpassword.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        child: Column(children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "asstes/12.png",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15, left: 15),
                      padding: EdgeInsets.only(right: 10, left: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35.0)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.email),
                          hintText: "Email",
                        ),
                        validator: (String value) {
                          if (value.isEmpty ||
                              value.indexOf(".") == -1 ||
                              value.indexOf("@") == -1) {
                            return "pleas enter your email";
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15, left: 15),
                      padding: EdgeInsets.only(right: 10, left: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35.0)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility),
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
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        child: Text(
                          "Forget ?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.red[700]),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgetPassword()));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => new HomePage()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          margin: EdgeInsets.only(),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.red[700],
                              borderRadius: BorderRadius.circular(35.0)),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Dont have an account? ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        GestureDetector(
                          child: Text(
                            "sign up",
                            style: TextStyle(
                                color: Colors.red[700],
                                fontWeight: FontWeight.w800,
                                fontSize: 16),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RejesterScreen()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ]),
      ),
    );
  }
}
