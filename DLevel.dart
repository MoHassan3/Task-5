import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/Task44/HStore.dart';

import 'EHistoryy.dart';

class Level extends StatefulWidget {
  const Level({super.key});

  @override
  State<Level> createState() => _LevalState();
}

class _LevalState extends State<Level> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/MO.jpg',
              ),
              radius: 20,
            ),
            SizedBox(width: 15,),
            Column(
              children: [
                Text(
                  'Mohamed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Level',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Icon(Icons.person,
          color: Colors.grey,
            size: 20,
          ),
          SizedBox(width: 10,),
          Icon(Icons.arrow_forward_ios_outlined,
            color: Colors.grey,
            size: 20,
          ),
        ],
      ),
      body: Column(

        children: [
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: Image(image: AssetImage(
                      'images/im4.png'
                  ),

                  ),
                ),
                SizedBox(width: 5,),
              ],
            ),
          ),
          SizedBox(height: 1,),
          Container(
            padding: EdgeInsetsDirectional.all(12),
            margin: EdgeInsetsDirectional.all(12),
            decoration: BoxDecoration(
            ),
            child: Row(
              children: [
                Expanded(
                  child: Image(image: AssetImage(
                      'images/im3.png'
                  ),
                  ),
                ),
                SizedBox(width: 5,),
              ],
            ),
          ),
          SizedBox(width: 10,),
          Container(
            decoration: BoxDecoration(
            ),
            child: Row(
              children: [
                Expanded(
                  child: Image(image: AssetImage(
                      'images/im6.png'
                  ),
                  ),
                ),
                SizedBox(width: 5,),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
            ),
            child: Row(
              children: [
                Expanded(
                  child: Image(image: AssetImage(
                      'images/im7.png'
                  ),
                  ),
                ),
                SizedBox(width: 5,),
              ],
            ),
          ),
SizedBox(height: 80,),
          Center(
            child: ElevatedButton(onPressed: (){
              setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Historyy();
              },
              ),
              );
              }
              );
            },
                child:
                Text(
                  'History ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
              style: ElevatedButton.styleFrom(
backgroundColor: Colors.deepPurple,
                  fixedSize: Size(320, 60),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
