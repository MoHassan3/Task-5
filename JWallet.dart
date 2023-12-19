import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title:
        Text(
          'NewWallet',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        actions: [
          Icon(Icons.account_circle_rounded,
          color: Colors.white,
            size: 25,
          ),
          SizedBox(width: 10,),
          Icon(Icons.mail_lock_outlined,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(width: 10,),
        ],
      ),
        backgroundColor:Colors.deepPurple ,
      body: Column(

        children: [
          SizedBox(height: 150,),
          Center(
            child: Text(
              '         Select The \n Witherdrawal Type',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),

            ),
          ),
          Container(
            padding: EdgeInsetsDirectional.all(12),
            margin: EdgeInsetsDirectional.all(12),
            decoration:BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(12),
              color: Colors.deepPurple[500]
            ),
            child: Row(
              children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/im8.png'),
                    radius: 30,
                  ),
                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bank Account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Unfourtunately We don not know \n'
                            'where to send your money',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Center(
                  child: Icon(Icons.arrow_forward_ios,
                  color: Colors.blueGrey,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsetsDirectional.all(12),
            margin: EdgeInsetsDirectional.all(12),
            decoration:BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(12),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/im12.png'),
                  radius: 30,
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Card',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Unfourtunately We don not know \n'
                            'where to send your money',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Center(
                  child: Icon(Icons.arrow_forward_ios,
                    color: Colors.blueGrey,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
