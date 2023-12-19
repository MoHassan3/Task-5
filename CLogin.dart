import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/Task44/AGetStart.dart';
import 'package:untitled/Task44/DLevel.dart';
import 'package:untitled/Task44/HStore.dart';


class Login extends StatefulWidget {

    @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  bool obscure = true ;
  bool valuee = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar :AppBar(
        backgroundColor: Colors.deepPurple,

      ),
      backgroundColor: Colors.deepPurple,
      body: SafeArea(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(12),
              ),
              padding: EdgeInsetsDirectional.all(12),
              width: double.infinity,
              height: 190,
              margin: EdgeInsetsDirectional.all(12),
              child: Stack(
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/Logo.png'),
                      radius: 50,
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 5,),
            Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,

                ),
              ),
            ),
            Padding(
                padding:EdgeInsets.all(12),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder:OutlineInputBorder(
                    borderSide :BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  hintText: 'Enter Your Email',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                      color: Colors.grey
                  ),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                  ),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator:  (value){
                  if ((value ?? '').isEmpty){
                    return 'please, Enter Your Email';
                  }
                  return null;
                },
                textAlign: TextAlign.start,
                controller: EmailController,
              ),
            ),
            SizedBox(height: 2,),
            Padding(
              padding:  EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder:OutlineInputBorder(
                    borderSide :BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  hintText: 'Enter Your Password',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                      color: Colors.grey
                  ),
                  prefixIcon: Icon(
                    Icons.password_outlined,
                    color: Colors.grey,
                  ),
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        obscure  = !obscure;
                      });

                    },
                    icon: Icon (obscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                      color: obscure ?  Colors.green : Colors.grey,
                    ),
                  ),
                ),
                obscureText: obscure,
                obscuringCharacter: '*',
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator:  (value) {
                  if ((value ?? '').isEmpty){
                    return 'please, Enter Your Password';
                  }else if (!RegExp(r'[A-Z]').hasMatch(value!) ){
                    return 'Password Must Be Contain At Least One Capital Character';
                  }else if (!RegExp(r'[0-9]').hasMatch(value)){
                    return 'Password Must Be Contain At Least One Number';
                  }else if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)){
                    return 'Password Must Be Contain At Least One Number';
                  }else if ((value.length ?? 0) < 8){
                    return 'Password Can Not Be Less Than 8 Characters ';
                  }
                  return null;
                },

                textAlign: TextAlign.start,

                controller: PasswordController,
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(value: valuee,
                      onChanged: (value) {
                        setState(() {
                          value : !valuee ;
                        },
                        );
                      },
                  ),
                  Expanded(
                    child: Text('Remember Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,

                    ),
                    ),
                  ),
                  TextButton(onPressed: (){},
                      child: Text(
                        'Forget Your Password?',
                        style: TextStyle(
                          color: Colors.pink,
                        ),
                      ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 8,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Level();
              },
              ),
              );
            },
                child: Text('Login',
                style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                ),
                ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(320, 40),
                backgroundColor: Colors.deepPurple,
              ),
                
              
            ),
            SizedBox(height: 8,),
            Text('Or Continues With ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
            ),
            SizedBox(height: 4,),
            Center(
              child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){
                    print("Enter Your Gmail");
                  },
                      icon: Icon(FontAwesomeIcons.google,
                      color: Colors.white,

                      ),
                    color: Colors.blue,
                    iconSize: 50,
                  ),
                  SizedBox(width: 5,),
                  IconButton(onPressed: (){
                    print("Enter Your FaceBook Account");
                  },
                    icon: Icon(FontAwesomeIcons.facebook,
                      color: Colors.white,
                    ),
                    color: Colors.blue,
                    iconSize: 50,
                  ),
                  SizedBox(width: 5,),
                  IconButton(onPressed: (){
                    print("Enter Your Twitter Account");
                  },
                    icon: Icon(FontAwesomeIcons.twitter,
                      color: Colors.white,
                    ),
                    color: Colors.blue,
                    iconSize: 50,
                  ),
                ],
              ),
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
                 'Registration?',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 15,
                 ),
               ),

            TextButton(onPressed: (){},
                child:
                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 15,
                  ),
                ),
            ),
             ],
           ),
          ],
        ),
      ),
    );
  }
}
