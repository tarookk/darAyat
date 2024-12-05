import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Color(0xffAE9453),
              child: Image.asset('asset/image.png',height: 20,width: 20,),
               
              
            )
          ],
        ),
        
      ),
    );
  }
}