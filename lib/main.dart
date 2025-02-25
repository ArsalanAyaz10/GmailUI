import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BuildUI(),
      ),
    );
  }
}

class BuildUI extends StatelessWidget {
  const BuildUI({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SearchBar(
                elevation: WidgetStatePropertyAll(3),
                hintText: "Search items",
                padding: WidgetStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16.0)),
                enabled: true,
                backgroundColor: WidgetStatePropertyAll(
                    Color.fromARGB(255, 151, 147, 147)),
                leading: Icon(Icons.search),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person,color: Colors.black,),
                    backgroundColor: Colors.white70,
                  ),
                  SizedBox(width: 10,),
                  Text("Arsalan Ayaz"),
                  Spacer(),
                  Column(
                    children: [
                      Text("1:37 am"),
                      SizedBox(height: 5,),
                      Icon(Icons.star,size: 20,),
                    ],
                  )

                ],
              ),
              SizedBox(height: 7,),
              Divider(color: Colors.white,height: 5,),
            ],
          ),
        ),
      ),
    );
  }
}

