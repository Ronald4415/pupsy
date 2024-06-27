import 'package:flutter/material.dart';
import 'package:pupsy/src/pages/home.screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);  // Aquí está la corrección

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    var d = const Duration(seconds: 4);
    Future.delayed(d, (){
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context)=> const HomeScreen()),
         (route) => false);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/inicio.png"),
            )
          ),
          child: const Align(
            alignment: Alignment.bottomCenter,
            child: ListTile(
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(70),
          child: Align(
            alignment: Alignment.bottomCenter,
          ),
        )
      ]),
    );
  }
}
