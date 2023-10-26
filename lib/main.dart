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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(child:GestureDetector(
        onTap: (){
          setState(() {
            a += 1;
          });
        },
        child:Container(
          height: 100,
          width: 100,
          color: Colors.red,
          child: Center(
            child: Text(
              '${a}',style: TextStyle(color: Colors.white,fontSize: 18),
            ),
          ),
        ),
      )
        ,),
    ));
  }
}


