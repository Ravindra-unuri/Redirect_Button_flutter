import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login-Redirect'),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const signup()),
                      ),
                    },
                child: Text('Signup page'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pinkAccent,
                ))),
      ),
    );
  }
}

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
      ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/goku2.jpg'),
                )
              ]
            ),
          ),
    ));
  }
}
