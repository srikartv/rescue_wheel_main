import 'package:flutter/material.dart';
import 'package:rescue_wheel/location.dart';
//import 'package:rescue_wheel/login.dart';
//import 'package:rescue_wheel/login_new.dart';
import 'package:rescue_wheel/login_new1.dart';
//import 'package:rescue_wheel/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rescue Wheel',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(255, 32, 78,1)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Rescue Wheel'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title}); 
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rescue Wheel'),
        backgroundColor: const Color.fromRGBO(255, 32, 78,1),
        foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
        centerTitle: true,
      ),
      body: Container(
        color: const Color.fromRGBO(0, 34, 77,1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> LocationScreen(),
                    ),
                    );
                    
                  },
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24.0)),
                      color: Color.fromRGBO(255, 32, 78,1)
                    ),
                    //color: const Color.fromRGBO(255, 32, 78,1),
                    child: const Center(
                      child: Text('Emergency', style: TextStyle(color: Color.fromRGBO(255, 255,255,1),
                        fontSize: 24.0),
                        ),
                        

                    ),
                  ),
                ),
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> LoginPag(),
                    )
                  );
                },
                child: const Text('Not an Emergency',style: TextStyle(fontSize: 18.0),),  )
              
            ],
          ) ),

      ),
    );
  }
}