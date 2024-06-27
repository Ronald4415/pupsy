// ignore_for_file: use_key_in_widget_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:pupsy/src/pages/auth_method.dart';
import 'package:pupsy/src/pages/pag_prin.dart';
import 'package:pupsy/src/pages/pag_reg.dart';
import 'package:pupsy/src/pages/snack_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplicacion Pupsy",
      home: const Inicio(),
      routes: {
        '/pag_prin': (context) => const Pag_prin(),
      },
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  late TextEditingController correoController;
  late TextEditingController contrasenaController;
  bool isLoaning = false;

  @override
  void initState() {
    super.initState();
    correoController = TextEditingController();
    contrasenaController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    correoController.dispose();
    contrasenaController.dispose();
  }

  void loginUser() async {
    setState(() {
      isLoaning = true;
    });

    String res = await AuthMethod().loginUser(
      correo: correoController.text,
      contrasena: contrasenaController.text,
    );

    if (res == "Inicio de sesión exitoso") {
      Navigator.pushReplacementNamed(context, '/pag_prin'); // Utilizamos pushReplacementNamed para reemplazar la pantalla actual en el stack de navegación
    } else {
      showSnackBar(context, res);
    }

    setState(() {
      isLoaning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpoP(context),
    );
  }


  Widget cuerpoP(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/formulario_prin.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 229,),
            correoW(),
            const SizedBox(height: 10,),
            contrasenaW(),
            const SizedBox(height: 30,),
            botonEntrar(context),
            const SizedBox(height: 70,),
            botonCrear(context),
          ],
        ),
      ),
    );
  }

  Widget correoW() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
      decoration: const BoxDecoration(),
      child: TextField(
        controller: correoController, 
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          hintText: "E mail/usuario",
          fillColor: Color.fromARGB(255, 242, 255, 255),
          filled: true,
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget contrasenaW() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
      decoration: const BoxDecoration(),
      child: TextField(
        controller: contrasenaController, 
        textAlign: TextAlign.center,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: "Contraseña",
          fillColor: Color.fromARGB(255, 242, 255, 255),
          filled: true,
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget botonEntrar(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 79, 0, 108),
            blurRadius: 70,
            spreadRadius: -10,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: loginUser,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          backgroundColor: const Color.fromARGB(255, 242, 255, 255),
        ),
        child: const Text(
          "Iniciar Sesión",
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
    );
  }

  Widget botonCrear(BuildContext context) {
  return TextButton(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(horizontal: 100, vertical: 10)),
      backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 255, 255, 255)),
    ),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const pag_Reg()),
      );
    },
    child: const Text(
      "Crear Cuenta",
      style: TextStyle(
        decoration: TextDecoration.underline,
        fontSize: 20,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ),
  );
}
}