// ignore_for_file: camel_case_types, use_build_context_synchronously

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pupsy/src/pages/auth_method.dart';
import 'package:pupsy/src/pages/home.screen.dart';
import 'package:pupsy/src/pages/snack_bar.dart';

void main() async {
  // Inicializa Firebase antes de ejecutar la aplicación
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  // Ejecuta la aplicación Flutter
  runApp(const pag_Reg());
}

class pag_Reg extends StatelessWidget {
  const pag_Reg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplicacion Pupsy",
      home: pag_reg(), // Elimina la constante aquí
    );
  }
}

class pag_reg extends StatefulWidget {
  const pag_reg({Key? key}) : super(key: key);

  @override
  State<pag_reg> createState() => _pag_regState();
}

class _pag_regState extends State<pag_reg> {
  final nombreApeController = TextEditingController();
  final cedulaController = TextEditingController();
  final numeroCelController = TextEditingController();
  final ciudadController = TextEditingController();
  final correoController = TextEditingController();
  final contrasenaController = TextEditingController();
  final confirmarContraController = TextEditingController();
  bool isLoaning = false;

  @override
  void dispose() {
    super.dispose();
    nombreApeController.dispose();
    cedulaController.dispose();
    numeroCelController.dispose();
    ciudadController.dispose();
    correoController.dispose();
    contrasenaController.dispose();
    confirmarContraController.dispose();
  }

  void signupUser() async {
  // Mostrar un indicador de carga
  setState(() {
    isLoaning = true;
  });

  // Verificar si los campos de correo y contraseña no están vacíos
  if (correoController.text.isNotEmpty && contrasenaController.text.isNotEmpty) {
    // Llamar al método de registro de autenticación
    String? res = await AuthMethod().signupUser(
      nombreApe: nombreApeController.text,
      cedula: cedulaController.text,
      numeroCel: numeroCelController.text,
      ciudad: ciudadController.text,
      correo: correoController.text,
      contrasena: contrasenaController.text,
      confirmarContra: confirmarContraController.text,
    );

    // Ocultar el indicador de carga
    setState(() {
      isLoaning = false;
    });

    // Manejar la respuesta del método de registro
    if (res != "Exito") {
      showSnackBar(context, res);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  } else {
    // Si algún campo está vacío, mostrar un mensaje de error
    showSnackBar(context, "Por favor ingrese el correo y la contraseña");
    // Ocultar el indicador de carga
    setState(() {
      isLoaning = false;
    });
  }
}



  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: cuerpoR(context),
      ),
    ),
  );
}

Widget cuerpoR(BuildContext context) {
  return Stack(
    fit: StackFit.expand,
    children: <Widget>[
      // Fondo
      Image.asset(
        'assets/Fondo.jpeg', // Ruta de tu imagen de fondo
        fit: BoxFit.cover,
      ),
      // Imagen superpuesta
      Positioned(
        top: 110,
        left: 5,
        right: 5,
        child: Image.asset(
          'assets/FondoR.jpeg', // Ruta de tu imagen superpuesta
          width: 600, // Ancho de la imagen superpuesta
          height: 600, // Alto de la imagen superpuesta
        ),
      ),
      Positioned(
        top: 150,
        left: 3,
        right: 3,
      child: Image.asset('assets/FotoPerfil.png',
        width: 100, // Ancho de la imagen superpuesta
        height: 100, // Alto de la imagen superpuesta
        )
      ),
      const Center(
        child: Text(
          "Registro",
          style: TextStyle(
            fontSize: 20, // Tamaño de la fuente
            height: -34,
            fontWeight: FontWeight.bold, // Texto en negrita
          ),
        ),
      ),
      const Center(
        child: Text(
          "_______________",
          style: TextStyle(
            fontSize: 20, // Tamaño de la fuente
            height: -33.5,
          ),
        ),
      ),
      const Center(
        child: Text(
          "Foto de Perfil",
          style: TextStyle(
            color: Color.fromARGB(255, 93, 86, 164),
            fontSize: 10, // Tamaño de la fuente
            height: -34,
          ),
        ),
      ),
      nombreApeW(),
      cedulaW(),
      numeroCelW(),
      ciudadW(),
      correoW(),
      contrasenaW(),
      confirmarContraW(),
      botonEnviar(context, this),
    ],
  );
}

Widget nombreApeW(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 110),
    margin: const EdgeInsets.only(top: 275),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: TextFormField(
      controller: nombreApeController,
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 3),
        hintText: "Nombre y Apellidos",
        hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        fillColor: Color.fromARGB(255, 93, 86, 164),
        filled: true,
        isCollapsed: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255), // Cambia el color del texto a blanco
      ),
    ),
  );
}

Widget cedulaW(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 110),
    margin: const EdgeInsets.only(top: 325),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: TextFormField(
      controller: cedulaController,
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 3),
        hintText: "Cédula",
        hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        fillColor: Color.fromARGB(255, 93, 86, 164),
        filled: true,
        isCollapsed: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255), // Cambia el color del texto a blanco
      ),
    ),
  );
}

Widget numeroCelW(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 110),
    margin: const EdgeInsets.only(top: 375),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: TextField(
      controller: numeroCelController,
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 3),
        hintText: "Número celular",
        hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        fillColor: Color.fromARGB(255, 93, 86, 164),
        filled: true,
        isCollapsed: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255), // Cambia el color del texto a blanco
      ),
    ),
  );
}

Widget ciudadW(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 110),
    margin: const EdgeInsets.only(top: 425),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: TextField(
      controller: ciudadController,
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 3),
        hintText: "Ciudad",
        hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        fillColor: Color.fromARGB(255, 93, 86, 164),
        filled: true,
        isCollapsed: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255), // Cambia el color del texto a blanco
      ),
    ),
  );
}

Widget correoW(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 110),
    margin: const EdgeInsets.only(top: 475),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: TextField(
      controller: correoController,
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 3),
        hintText: "Correo",
        hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        fillColor: Color.fromARGB(255, 93, 86, 164),
        filled: true,
        isCollapsed: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255), // Cambia el color del texto a blanco
      ),
    ),
  );
}

Widget contrasenaW(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 110),
    margin: const EdgeInsets.only(top: 525),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: TextField(
       obscureText: true,
      controller: contrasenaController,
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 3),
        hintText: "Contraseña",
        hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        fillColor: Color.fromARGB(255, 93, 86, 164),
        filled: true,
        isCollapsed: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255), // Cambia el color del texto a blanco
      ),
    ),
  );
}

Widget confirmarContraW() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 110),
    margin: const EdgeInsets.only(top: 570),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: TextFormField(
       obscureText: true,
      controller: confirmarContraController,
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 3),
        hintText: "Confirmar Contraseña",
        hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        fillColor: Color.fromARGB(255, 93, 86, 164),
        filled: true,
        isCollapsed: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255), // Cambia el color del texto a blanco
      ),
    ),
  );
}


Widget botonEnviar(BuildContext context, _pag_regState state) {
  return Positioned(
    bottom: 200, // Ajusta la posición del botón según sea necesario
    left: 0,
    right: 0,
    child: Center(
      child: ElevatedButton(
        onPressed: () async {
          // Llama al método signupUser
          state.signupUser();
           Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> const HomeScreen())
      );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 93, 86, 164),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(
          'Enviar',
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    ),
  );
}

}

