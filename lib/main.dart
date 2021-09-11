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
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 178,
              flexibleSpace: FlexibleSpaceBar(
                background: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.android_outlined),
                    ),
                    Text("My Todolist"),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.filter_outlined),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: delegate,
            ),
          ],
        ),
      ),
    );
  }
}
