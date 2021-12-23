import 'package:assignment/login.dart';
import 'package:assignment/signup.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Image.asset(
                  'images/pic1.png',
                  width: 35,
                  height: 35,
                ),
                const SizedBox(width: 5),
                const Text(
                  'Story Club',
                  style: TextStyle(
                      color: Color(0xFF030548),
                      fontSize: 19,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Image.asset('images/man.png', width: 300),
          ),
          const Center(
              child: Text(
            'Namaste',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 30,
            ),
          )),
          const SizedBox(height: 5),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                'Here you can share your personal experiences in the form of short stories',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.grey.shade700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 5),
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
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 120.0),
                child: Text('SIGN IN',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
          const SizedBox(height: 5),
          TextButton(
            onPressed: () {
              Future.delayed(Duration(seconds: 0)).then(
                (value) => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signup(),
                  ),
                ),
              );
            },
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFFB2EBF2),
                // gradient: LinearGradient(
                //     colors: [Colors.blue.shade400, Colors.blue.shade700])
              ),
              child: const Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 115.0),
                child: Text('SIGN UP',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xDD000000),
                    )),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
