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

  var myImage = [
    {
      'title': 'Loki',
      'img':
          'https://th.bing.com/th/id/OIP.A3UAR6_iNY6UPM27f_xtEQHaHa?pid=ImgDet&rs=1'
    },
    {
      'title': 'Loki2',
      'img':
          'https://th.bing.com/th/id/OIP.lSdV0-TAk4eY9boJF7VrxQHaIh?pid=ImgDet&rs=1'
    },
    {
      'title': 'Loki3',
      'img':
          'https://th.bing.com/th/id/OIP.A3UAR6_iNY6UPM27f_xtEQHaHa?pid=ImgDet&rs=1'
    },
    {
      'title': 'Loki4',
      'img':
          'https://th.bing.com/th/id/OIP.lSdV0-TAk4eY9boJF7VrxQHaIh?pid=ImgDet&rs=1'
    },
    {
      'title': 'Loki5',
      'img':
          'https://th.bing.com/th/id/OIP.A3UAR6_iNY6UPM27f_xtEQHaHa?pid=ImgDet&rs=1'
    },
    {
      'title': 'Loki6',
      'img':
          'https://th.bing.com/th/id/OIP.lSdV0-TAk4eY9boJF7VrxQHaIh?pid=ImgDet&rs=1'
    },
  ];

  mySnackBar(context, msg) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

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
        title: const Center(child: Text('ListView')),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: myImage.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onDoubleTap: () {
              mySnackBar(context, myImage[index]['title']!);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 350,
              child: Image.network(
                myImage[index]['img']!,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
