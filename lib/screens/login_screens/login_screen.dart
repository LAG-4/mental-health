import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Import the lottie package
import 'package:shesafe/screens/signup_screen.dart';
import 'package:shesafe/utils/colors.dart';

import 'login_admin.dart';
import 'login_protector.dart';
import 'login_user.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text('Welcome To',style: TextStyle(fontSize: 20,fontFamily: 'Outfit',color: Color(0xff4d3228))),
                Text('Therapeia',style: TextStyle(fontSize: 35,fontFamily: 'Outfit',color: Color(0xff4d3228))),
                const SizedBox(height: 20,),
                Lottie.asset(
                  'assets/health.json',
                  width: 300,
                  height: 300,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 40,),


                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xff9bb169)),
                      padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15, horizontal: 20)),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginUser()));
                    },
                    child: Text(
                      'Login As User',
                      style: TextStyle(
                        color: Color(0xfffcfefd),
                        fontSize: 20,
                          fontFamily: 'Outfit'
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20,),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xffa18fff)),
                      padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15, horizontal: 20)),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginProtector()));
                    },
                    child: Text(
                      'Login As Protector',
                      style: TextStyle(
                        color: Color(0xfffcfefd),
                        fontSize: 20,
                          fontFamily: 'Outfit'

                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
