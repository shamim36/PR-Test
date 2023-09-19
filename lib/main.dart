import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ('Practice'),
      color: Colors.blueAccent,
      debugShowCheckedModeBanner: true,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size(double.infinity, 60),
    backgroundColor: Colors.blueAccent,
    foregroundColor: Colors.black,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadiusDirectional.horizontal(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Text Form')),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter your email'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter your Password'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Login'),
              style: buttonStyle,
            ),
          ),
        ],
      ),
    );
  }
}
