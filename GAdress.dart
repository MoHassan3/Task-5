import 'package:flutter/material.dart';
import 'package:untitled/Task44/HStore.dart';

class Adress extends StatelessWidget {
  const Adress({super.key});

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
            height: 110,
          ),

          Center(
            child: Image(image: AssetImage(
                'images/adress.png'
            ),
            ),
          ),
          SizedBox(height: 170,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Store();
            },
            ),
            );
          },
            child:
            Text(
              '  Add Address  ',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
              ),
            ),
            style: ElevatedButton.styleFrom(
              side: BorderSide(
                color: Colors.black,
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

