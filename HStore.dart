import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'JWallet.dart';

class Store extends StatelessWidget {
   Store({super.key});
  List Products = [
  {
  'name' : 'EarPhone',
  'image' : 'images/product1.avif',
    'title' : 'Today Special',
    'Text' : 'Lets Play',
    'Pic':   'images/nik.jpg',
    '2pic' : 'images/Buttons.png',
},
    {
      'name' : 'Shoes',
      'image' : 'images/shoes.avif',
      'title' : 'Today Special',
      'Text' : 'Lets Go To School',
      'Pic':   'images/puma.jpg',
      '2pic' : 'images/Buttons1.png',
    },
    {
      'title' : 'Today Special',
      'Text' : 'Lets Wailking',
      'name' : 'Shirt',
      'image' : 'images/product3.avif',
      'Pic'  :   'images/sport.jpg',
    '2pic' : 'images/Buttons2.png',
    },
    {
      'title' : 'Today Special',
      'Text' : 'Lets Running',
      'name' : 'Skate',
      'image' : 'images/product4.jpg',
      'Pic':   'images/adidas.jpg',
      '2pic' : 'images/Buttons3.png'
    },
    {
      'title' : 'Today Special',
      'Text' : 'Lets Do Exercice',
      'name' : 'Egypt Shirt',
      'image' : 'images/product5.avif',
      'Pic':   'images/tempo.jpg',
      '2pic' : 'images/Buttons4.png'
    },
  ];
  List<Color> col = [
    Colors.red,
    Colors.purple,
    Colors.blue,
    Colors.pink,
    Colors.grey,
  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Store',
              style: TextStyle(
            color: Colors.white,
                fontSize: 25,

        ),
        ),
        actions: [
          Icon(FontAwesomeIcons.store,
            size: 20,
            color: Colors.white,
          ),
          SizedBox(width: 12,),
          Icon(Icons.email,
            size: 20,
            color: Colors.white,
          ),
          SizedBox(width: 12,),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Wallet();
            },
            ),
            );
          },
            icon:Icon(FontAwesomeIcons.wallet,
              color: Colors.grey,
              size: 30,
            ),

          ),
      SizedBox(width: 16,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(' ',
              style:TextStyle(
                color: Colors.white,
                fontSize: 5,
              ),
            ),
            SizedBox(height: 1,),
            SizedBox(height: 120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding:EdgeInsetsDirectional.all(8),
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 35,
                          backgroundImage:Image.asset(Products[index]['image'],).image
                      ),

                      SizedBox(height: 3,),
                      Text(Products[index]['name'],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                    ],
                  );

                },
          separatorBuilder: (context, index) {
           return SizedBox(width: 20,);
          },
                itemCount: Products.length,
              ),
            ),
            SizedBox(height: 90,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding:EdgeInsetsDirectional.all(8),
                itemBuilder: (context,index){
                  return Container(
                    width: 170,
                    height: 50,
                    decoration: BoxDecoration(
                      color: col[index],

                    ),
                    child: Row(
                      children: [
                        Column(
                        children: [
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Text(Products[index]['title'],
                                style: TextStyle(
                                  color: Colors.white,
                                fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [

                              Text(Products[index]['Text'],
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 8,
                                ),
                              ),
                            ],
                          ),

                        ],

                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                           SizedBox(height: 10,),
                            Image(image: AssetImage(
                              'images/man.avif',

                            ),
                              height: 50,
                              width: 50,

                            ),
                          ],

                        ),
                       ],
                    ),
                  );

                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 20,);
                },
                itemCount: Products.length,
              ),
            ),
            SizedBox(height: 90,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding:EdgeInsetsDirectional.all(8),
                itemBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Image(image: AssetImage(Products[index]['Pic'],
                    ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 20,);
                },
                itemCount: Products.length,
              ),
            ),
            SizedBox(height: 90,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding:EdgeInsetsDirectional.all(8),
                itemBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Image(image: AssetImage(Products[index]['2pic'],
                    ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 20,);
                },
                itemCount: Products.length,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Popular',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
                TextButton(onPressed: (){},
                    child:  Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 18,
                      ),
                    ),
                ),
              ],
            ),
            GridView.count(crossAxisCount: 2,
            crossAxisSpacing:10 ,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
              Container(
                decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                ),

                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image(image: AssetImage(
                          'images/Shoes1.png',
                        ),
                        ),
                        PositionedDirectional(
                          top: 4,
                          end: 4,
                          child: Container(
                            color: Colors.blueGrey,
                            child: Text(
                              '1200',
                            ),
                          ),
                        ),

                      ],
                    ),
                    Text('Nike',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    Text('Air Force 1 ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                  ),

                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image(image: AssetImage(
                            'images/Shoes2.png',
                          ),
                          ),
                          PositionedDirectional(
                            top: 4,
                            end: 4,
                            child: Container(
                              color: Colors.blueGrey,
                              child: Text(
                                '1200',
                              ),
                            ),
                          ),

                        ],
                      ),
                      Text('Nike',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                      Text('Air Lunaroll ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
            ],

            ),
            SizedBox(height: 5,),

          ],
        ),
      ),
    );
  }
}
