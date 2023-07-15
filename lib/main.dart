import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/game_page.dart';


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
      routes: {
        "/gamepage" : ( (context) => GamePage()),
      },
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 32, 133, 183),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Enter Player's Name",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),),

                const SizedBox(height: 25),
                 Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 150),
                 child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                    ),
                    hintText: "Enter name of Player 1",
                    hintStyle: TextStyle(color:Colors.white)
                    ),
                
                ),
              ),

              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150,vertical: 25 ),
              child: TextFormField(
                decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)
                ),
                hintText: "Enter name of Player 2",
                hintStyle: TextStyle(color:Colors.white)
              ),
              
                ),
              ),
              Builder(
                builder: (context) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 8, 141, 208),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                  
                      ),
                    ),
                     onPressed: (){
                     
                        Navigator.pushReplacementNamed(context, '/gamepage');
                      },
                  
                      
                    child: Text("Start Game",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    ),
                  );
                },
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
               
                
                   

                    
  
  










              

