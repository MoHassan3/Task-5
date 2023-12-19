import 'package:flutter/material.dart';

import 'GAdress.dart';

class Conf extends StatelessWidget {
  const Conf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: [
          SizedBox(
          height: 50,
          ),

          Center(
            child: Image(image: AssetImage(
              'images/verfy.png'
            ),
            ),
          ),
          SizedBox(height: 50,),

          ElevatedButton(onPressed: (){
          },
            child:
            Text(
              '   Verify Email   ',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
              ),
            ),
            style: ElevatedButton.styleFrom(
              side: BorderSide(
                color: Colors.white,
              ),
              fixedSize: Size(320, 60),
              backgroundColor: Colors.purpleAccent,
            ),
          ),

          SizedBox(height: 15,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Adress();
            },
            ),
            );
          },
            child:
            Text(
              '  Open My App  ',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
              ),
            ),
            style: ElevatedButton.styleFrom(
              side: BorderSide(
                color: Colors.white,
              ),
              fixedSize: Size(320, 60),
              backgroundColor: Colors.deepPurple,
            ),
          ),
        ],
      ),

    );
  }
}
