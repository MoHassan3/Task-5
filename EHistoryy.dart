import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/Task44/FEmailConfident.dart';
import 'package:untitled/Task44/HStore.dart';

class Historyy extends StatefulWidget {
   Historyy({super.key});

  @override
  State<Historyy> createState() => _HistoryyState();
}

class _HistoryyState extends State<Historyy> {
List alonso = [

  {
    'numb': '25 May',
    'Num' : '10,120',
  },
  {
    'numb': '26 May',
    'Num' : '11,120',
  },
  {
    'numb': '27 May',
    'Num' : '10,120',
  },
  {
    'numb': '28 May',
    'Num' : '11,120',
  },
  {
    'numb': '29 May',
    'Num' : '11,120',
  },
  {
    'numb': '30 May',
    'Num' : '11,120',
  },
  {
    'numb': '1 July',
    'Num' : '11,120',
  },
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title:
            Text(' History',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
            ),
            actions: [
              IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Conf();
                  },
                  ),
                  );
                },
                icon: Icon(Icons.email_sharp,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],



      ),
      body: SingleChildScrollView(


        child: Column(

          children:[
        Container(

        padding: EdgeInsetsDirectional.all(12),
        margin: EdgeInsetsDirectional.all(12),
        width: double.infinity,
        height: 100,
        color: Colors.blueGrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(Icons.circle_outlined,
                  color: Colors.white,
                  size: 15,
                ),
                SizedBox(height: 5,),
                Text(
                  '18,3  H',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Time',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(Icons.accessibility_outlined,
                  color: Colors.white,
                  size: 15,
                ),
                SizedBox(height: 5,),
                Text(
                  '48,7  km',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Exercise',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            Column(
              children: [
                Icon(Icons.circle_outlined,
                  color: Colors.white,
                  size: 15,
                ),
                SizedBox(height: 5,),
                Text(
                  '123 BPN',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'BPN',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsetsDirectional.all(12),
              padding: EdgeInsetsDirectional.all(12),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              height: 65  ,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
crossAxisAlignment: CrossAxisAlignment.start,
                    children : [
                      Text(
                        alonso[index]['numb'],
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 2,),
                      Row(
                        children: [
                          Text(
                            '12,4 km',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text(
                            '1222 Callories',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 105,),
                  Column(
                    children : [
                      Text(
                        alonso[index]['Num'],
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 2,),
                      Text(
                        'BPN',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
              separatorBuilder: (context, index) {
                return
                SizedBox(height: 0,);
              },
              itemCount: alonso.length
          ),
      ],
        ),
      ),
    );
  }
}
