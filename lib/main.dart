import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        backgroundColor: Color(0xff4044C9),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Icon(Icons.android_outlined),
        ),
        centerTitle: true,
        title: Text(
          "Todo App",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.filter_alt_outlined),
            ),
          ),
        ],
        elevation: 0,
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.only(right: 24, left: 24, bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Task",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "24",
                      style: TextStyle(
                          fontWeight: FontWeight.w300, color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Add New"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        primary: Colors.white,
                        onPrimary: Color(0xff4044C9),
                        textStyle: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          preferredSize: Size.fromHeight(85),
        ),
      ),
      body: Container(
        color: Color(0xff4044C9),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 24,
                  bottom: 16,
                ),
                padding: EdgeInsets.only(left: 16.0),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Color.fromRGBO(186, 191, 199, 1)),
                  color: Color.fromRGBO(108, 117, 125, 0.18),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search by task name...",
                    hintStyle: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xffBABFC7),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  height: 64,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Color(0xff4044C9),
                        width: 4,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Checkbox(value: true, onChanged: (checked) {}),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Learn Flutter",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18)),
                              Text("I'm goin' to learn flutter")
                            ],
                          ),
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
