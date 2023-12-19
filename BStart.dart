import 'package:flutter/material.dart';
import 'package:untitled/Task44/CLogin.dart';

class Start extends StatefulWidget {
   Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Column(
          children: [
            Image(image: AssetImage('images/im2.png'),
              width: double.infinity,
              height: 500,
            ),
            Center(
              child: Text(
                'Walk & Run without Over Thinking',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 5,),
            Center(
              child: Text(
                'Lets Start A Sport life Style.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 12,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Login();
              },
              ),
              );
            },
              child:Text(
                'Next',
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
