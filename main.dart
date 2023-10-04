// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 332.52,
          width: 204,
          color: Colors.blue,
          child: Column(
            children: [
              SizedBox(
                height: 98.17,
                child: Container(
                  color: Colors.white,
                  child: SizedBox(
                    child: Center(child: Image.asset('assets/image/logo_1.png')),
                  ),
                ),
              ),
              SizedBox(
                height: 98.17,
                child: Container(
                  color: Colors.blue,
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            "STUDENT",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage("https://avatars.githubusercontent.com/rakib02cse"),
                          maxRadius: 45,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3,
                child: Container(
                  color: Colors.yellow,
                ),
              ),
              SizedBox(
                height: 98.17,
                width: double.infinity,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Rakib Hossain"),
                      Text(
                        "ID: 201061002",
                        style: TextStyle(color: Colors.blue),
                      ),
                    
                      Text(
                        "Dept. of Computer Science & Information Technology",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Blood Group : O +",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3,
                child: Container(
                  color: Colors.yellow,
                ),
              ),
              SizedBox(
                height: 32,
                width: double.infinity,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        "................",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      Text(
                        "Register",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Rakib"),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.amber,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.amber),
                accountName: Text(
                  "Rakib Hossain",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "rakib02cse@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      ""),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text(
                "Contact Us",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
