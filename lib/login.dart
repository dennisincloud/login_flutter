import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon:
                const Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
              color: const Color.fromARGB(255, 255, 255, 255),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                       const Text(
                                  "Login",
                                   style: TextStyle(
                                   fontSize: 30,
                                   fontWeight: FontWeight.bold),
                                    ),
                      Image.asset("assets/background.png"),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            color: Color.fromARGB(255, 255, 255, 255),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(children: <Widget>[
                                    const Padding(
                                      padding: EdgeInsets.all(15),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'User Name',
                                          hintText: 'Enter Your Name',
                                        ),
                                      ),
                                    ),
                                    //const SizedBox(height: ,),
                                    const Padding(
                                      padding: EdgeInsets.all(15),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Password',
                                          hintText: 'Enter Password',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 40),
                                    MaterialButton(
                                      minWidth: double.infinity,
                                      height: 60,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginPage()));
                                      },
                                      color:
                                          Color.fromARGB(255, 11, 201, 226),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50),
                                      ),
                                      child: const Text(
                                        "Login",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Login to your account",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey[700]),
                                    ),
                                  ])
                                ]),
                          ),
                        ),
                      )
                    ]),
              )),
        ));
  }
}
