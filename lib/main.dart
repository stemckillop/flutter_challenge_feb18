import 'package:flutter/material.dart';
import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Entry()
    );
  }
}

class Entry extends StatelessWidget {
  const Entry({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome, Stephen"),
        centerTitle: true,
        backgroundColor: secondaryColor,
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        actions: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 8), child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)), ),
          Padding( padding: const EdgeInsets.symmetric(horizontal: 8), child: IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)), ),
        ],
      ),
      backgroundColor: secondaryColor,
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const HeaderBar(),
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: ((context, index) {
                return const ListTile(title: Text("Hello World"));
              }), ))
          ]
        ),
      ),
      
    );
  }
}

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Row(
            children: [
              Text("Bobbob Balance", style: TextStyle(color: primaryColor),),
              const Expanded(child: SizedBox()),
              IconButton(onPressed: () {}, color: Colors.white, icon: const Icon(Icons.visibility))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("A\$", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300,)),
              SizedBox(width: 8,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                Text("11,620", style: TextStyle(color:Colors.white, fontSize: 36, fontWeight: FontWeight.w300),),
                Text(".15", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),)
              ],)
            ],
          )
        ],
      ),
    );
  }
}