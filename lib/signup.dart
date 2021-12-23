import 'package:assignment/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Future.delayed(Duration(seconds: 0)).then(
                        (value) => Navigator.of(context)
                            .popUntil((route) => route.isFirst),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 40,
                      color: Color(0xff02004E),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 28.0, 0, 0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 38,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 28.0, vertical: 14.0),
                child: Column(
                  children: const [
                    SizedBox(height: 25),
                    TextField(
                      style: TextStyle(color: Color(0xff02004E), fontSize: 18),
                      decoration: InputDecoration(
                          // enabledBorder: UnderlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Color(0xff02004E),
                          //     width: 2.0,
                          //   ),
                          // ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff02004E),
                              width: 2.0,
                            ),
                          ),
                          fillColor: Color(0xff02004E),
                          focusColor: Color(0xff02004E),
                          hintText: 'Enter Name'),
                    ),
                    SizedBox(height: 25),
                    TextField(
                      style: TextStyle(color: Color(0xff02004E), fontSize: 18),
                      decoration: InputDecoration(
                          // enabledBorder: UnderlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Color(0xff02004E),
                          //     width: 2.0,
                          //   ),
                          // ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff02004E),
                              width: 2.0,
                            ),
                          ),
                          fillColor: Color(0xff02004E),
                          focusColor: Color(0xff02004E),
                          hintText: 'Enter Email'),
                    ),
                    SizedBox(height: 25),
                    TextField(
                      obscureText: true,
                      style: TextStyle(color: Color(0xff02004E), fontSize: 18),
                      decoration: InputDecoration(
                          // enabledBorder: UnderlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Color(0xff02004E),
                          //     width: 2.0,
                          //   ),
                          // ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff02004E),
                              width: 2.0,
                            ),
                          ),
                          fillColor: Color(0xff02004E),
                          focusColor: Color(0xff02004E),
                          hintText: 'Enter Password'),
                    ),
                    SizedBox(height: 25),
                    TextField(
                      obscureText: true,
                      style: TextStyle(color: Color(0xff02004E), fontSize: 18),
                      decoration: InputDecoration(
                          // enabledBorder: UnderlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Color(0xff02004E),
                          //     width: 2.0,
                          //   ),
                          // ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff02004E),
                              width: 2.0,
                            ),
                          ),
                          fillColor: Color(0xff02004E),
                          focusColor: Color(0xff02004E),
                          hintText: 'Confirm Password'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              TextButton(
                onPressed: () {},
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(colors: [
                        Color(0xFF0097A7),
                        Color(0xff2200CC),
                        Color(0xFF0097A7),
                      ])),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 120.0),
                    child: Text('SIGN UP',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(children: const [
                SizedBox(width: 40),
                Expanded(child: Divider(color: Colors.black)),
                SizedBox(width: 20),
                Text(
                  'or',
                  style: TextStyle(
                      color: Color(0xff02004E),
                      fontSize: 17,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(width: 20),
                Expanded(child: Divider(color: Colors.black)),
                SizedBox(width: 40),
              ]),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Image.asset('images/google.png', width: 40),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Image.asset('images/facebook.png', width: 40),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Image.asset('images/apple.png', width: 40),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Image.asset('images/linked.png', width: 40),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 15),
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                        color: Color(0xff9391C7),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {
                      Future.delayed(Duration(seconds: 0)).then(
                        (value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          color: Color(0xff3A00EF),
                          fontSize: 18,
                          wordSpacing: 3,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
