import 'package:flutter/material.dart';
class SignUppage extends StatefulWidget {
  const SignUppage({Key? key}) : super(key: key);

  @override
  _SignUppageState createState() => _SignUppageState();
}

class _SignUppageState extends State<SignUppage> {
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
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                     const Text(
                                        "Sign Up",
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
                                  Row(                                    
                                    children: const [
                                      SizedBox(
                                        width: 5,
                                      ),
                                      
                                    ],
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Column(children: <Widget>[
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
                                            obscureText:false,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'Email',
                                              hintText: 'Enter your Email',
                                            ),
                                          ),
                                        ),

                                         const Padding(
                                          padding: EdgeInsets.all(15),
                                          child: TextField(
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'Password',
                                              hintText: 'Enter your  Password',
                                            ),
                                          ),
                                        ),

                                         
                                        const SizedBox(height: 20),
                                        MaterialButton(
                                          minWidth: double.infinity,
                                          height: 60,
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SignUppage()));
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
                                          height: 10,
                                        ),
                                        Text(
                                          "Login to your account",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey[700]),
                                        ),
                                      ]))
                                ])
                              ]),
                        ),
                      ),
                    )
                  ])),
        ));
  }
}
