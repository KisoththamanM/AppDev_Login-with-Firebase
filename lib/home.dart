import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x999C27B0),
        title: Text(
          'Users List',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
                bottom: 0,
              ),
              child: Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ',
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                    Text(
                      'Job: ',
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                    Text(
                      'Email: ',
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
