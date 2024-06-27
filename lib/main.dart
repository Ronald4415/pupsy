import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pupsy/src/pages/home.screen.dart';
import 'package:pupsy/src/pages/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Miapp());
}

class Miapp extends StatelessWidget {
  const Miapp({Key? key}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplicacion Pupsy",
      debugShowCheckedModeBanner: false,
      initialRoute: "splash",
      routes: {
        "splash":(context) => const SplashScreen(),
        "home":(context) => const HomeScreen(),
      }
    );
  }
}
