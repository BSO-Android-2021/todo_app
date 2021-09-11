import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Todo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyTodo(),
    );
  }
}

class MyTodo extends StatelessWidget {
  const MyTodo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.android_outlined),
        centerTitle: true,
        title: Text("Todo App"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_alt_outlined),
          ),
        ],
        elevation: 0,
        bottom: PreferredSize(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total Task"),
                  Text("24"),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Add")),
                ],
              )
            ],
          ),
          preferredSize: Size.fromHeight(50),
        ),
      ),
    );
  }
}
