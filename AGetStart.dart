import 'package:flutter/material.dart';
import 'package:untitled/Task44/BStart.dart';

import 'HStore.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        actions : [ TextButton(onPressed: (){
          Navigator.pop(context);
        },
          child: Icon(Icons.exit_to_app_outlined,
            color: Colors.white,
            size: 40,

          ),
        ),
          SizedBox(width: 10,),
    ],
      ),
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Image(image: AssetImage('images/First.png'),
              width: double.infinity,
              height: 400,
            ),
            Center(
              child: Text(
                'Running App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            SizedBox(height: 5,),
            Center(
              child: Text(
                'Running apps, designed for various devices.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 12,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Start();
              },
              ),
              );
            },
              child:Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                fixedSize: Size(320, 60),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
