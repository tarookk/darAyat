

import 'package:dartayat_project/widget/home_page.dart';
import 'package:flutter/material.dart';




class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage ()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffAE9453), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                
                Center(
                  child: Image.asset('asset/image 1.png',height:50,width: 50,color: Color.fromARGB(255, 73, 56, 13),
                              ),
                ),
              ],
            ),
            Image.asset('asset/image2.png',height: 200,width: 200,), 
            
           
          ],
        ),
      ),
    );
  }
}