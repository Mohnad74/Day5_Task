import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return CupertinoApp();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My First app',
        // home: Text('hello from flutter'),
        home: Scaffold(
            appBar: AppBar(
              title:
                  Text('flutter day2', style: TextStyle(color: Colors.amber)),
              leading: Icon(Icons.phone, color: Colors.amber),
              actions: [
                Icon(Icons.notification_add, color: Colors.amber),
              ],
              backgroundColor: Colors.black,
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Icon(Icons.ac_unit_outlined),
                  SizedBox(height: 35),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                      width: 150,
                      height: 150,
                      // color: Colors.green,
                      child: Image.asset(
                        'assets/images/img2.jpg',
                        fit: BoxFit.cover,
                      )),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print("Button pressed");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber, // Background color
                        foregroundColor: Colors.black, // Text color
                        padding: EdgeInsets.symmetric(vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ), // Padding
                      ),
                      child: Text("Login",
                          style: TextStyle(
                            fontSize: 32,
                          )),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("data"),
                      SizedBox(width: 5),
                      Text(
                        " register",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Forget password",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ))
                ],
              ),
            )));
  }
}
