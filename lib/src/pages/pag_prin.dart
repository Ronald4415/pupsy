import 'package:flutter/material.dart';
import 'package:pupsy/src/pages/pag_blog.dart';
import 'package:pupsy/src/pages/pag_compras.dart';
import 'package:pupsy/src/pages/pag_gatos.dart';
import 'package:pupsy/src/pages/pag_perros.dart';
import 'package:pupsy/src/pages/pag_servicios.dart';

// ignore: camel_case_types
class Pag_prin extends StatelessWidget {
  const Pag_prin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplicacion Pupsy",
      home: pag_prin(),
    );
  }
}

// ignore: camel_case_types
class pag_prin extends StatefulWidget {
  const pag_prin({Key? key}) : super(key: key);

  @override
  State<pag_prin> createState() => _pag_prinState();
}

// ignore: camel_case_types
class _pag_prinState extends State<pag_prin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: cuerpoP(context),
        ),
      ),
    );
  }
}

Widget cuerpoP(BuildContext context) {
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
        top: 200,
        left: 5,
        right: 5,
        child: Image.asset(
          'assets/FondoR.jpeg', // Ruta de tu imagen superpuesta
          width: 500, // Ancho de la imagen superpuesta
          height: 500, // Alto de la imagen superpuesta
        ),
      ),
      Positioned(
        top: 70,
        left: 0,
        right: 230,
      child: Image.asset('assets/FotoPerfil.png',
        width: 100, // Ancho de la imagen superpuesta
        height: 100, // Alto de la imagen superpuesta
        )
      ),
      const Positioned(
        top: 175,
        left: 35,
        right: 0,
        child: Text(
          "Nombre del Usuario",
          style: TextStyle(
            color: Color.fromARGB(255, 93, 86, 164),
            fontSize: 12, // Tamaño de la fuente
          ),
        ),
      ),
      perros(context),
      gatos(context),
      blog(context),
      servicios(context),
      miembroPupsy(),
      instagram(),
      facebook(),
      whatsapp(),
      carritoCom(context)
    ],
  );
}

Widget perros(BuildContext context) {
  return Positioned(
    bottom: 500, // Ajusta la posición del botón según sea necesario
    left: 0,
    right: 0,
    child: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const pag_perros()),
          );
          //accion del boton
        },
        style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 93, 86, 164),
          padding: const EdgeInsets.symmetric(horizontal: 103, vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Text(
          'Perros',
          style: TextStyle(
            fontSize: 25,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    ),
  );
}



Widget gatos(BuildContext context) {
  return Positioned(
    bottom: 430, // Ajusta la posición del botón según sea necesario
    left: 0,
    right: 0,
    child: Center(
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const pag_gatos()),
          );
        },
        style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 93, 86, 164),
          padding: const EdgeInsets.symmetric(horizontal: 107, vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Text(
          'Gatos',
          style: TextStyle(
            fontSize: 25,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    ),
  );
}

Widget blog(BuildContext context) {
  return Positioned(
    bottom: 360, // Ajusta la posición del botón según sea necesario
    left: 0,
    right: 0,
    child: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const pag_blog()),
          );
        },
        style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 93, 86, 164),
          padding: const EdgeInsets.symmetric(horizontal: 114, vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Text(
          'Blog',
          style: TextStyle(
            fontSize: 25,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    ),
  );
}

Widget servicios(BuildContext context) {
  return Positioned(
    bottom: 290, // Ajusta la posición del botón según sea necesario
    left: 0,
    right: 0,
    child: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const pag_servicios()),
          );
        },
        style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 93, 86, 164),
          padding: const EdgeInsets.symmetric(horizontal: 88, vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Text(
          'Servicios',
          style: TextStyle(
            fontSize: 25,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    ),
  );
}

Widget miembroPupsy() {
  return Positioned(
    bottom: 220, // Ajusta la posición del botón según sea necesario
    left: 0,
    right: 0,
    child: Center(
      child: ElevatedButton(
        onPressed: () {
          //accion del boton
        },
        style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 93, 86, 164),
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Text(
          'Miembro Pupsy',
          style: TextStyle(
            fontSize: 25,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    ),
  );
}



Widget instagram() {
  return Positioned(
    top: 750, // Cambia esto para mover el widget verticalmente
    left: 100, // Cambia esto para mover el widget horizontalmente
    child: InkWell(
      onTap: () {
      },
      child: Image.asset(
        'assets/Instagram.jpeg', // Ruta de la imagen              
          width: 50, // Ancho de la imagen superpuesta
          height: 50, // Alto de la imagen superpuesta
      ),
    ),
  );
}

Widget facebook() {
  return Positioned(
    top: 750, // Cambia esto para mover el widget verticalmente
    left: 180, // Cambia esto para mover el widget horizontalmente
    child: InkWell(
      onTap: () {
      },
      child: Image.asset(
        'assets/Facebook.jpeg', // Ruta de la imagen              
        width: 50, // Ancho de la imagen superpuesta
          height: 50, // Alto de la imagen superpuesta
      ),
    ),
  );
}

Widget whatsapp() {
  return Positioned(
    top: 750, // Cambia esto para mover el widget verticalmente
    left: 260, // Cambia esto para mover el widget horizontalmente
    child: InkWell(
      onTap: () {
      },
      child: Image.asset(
        'assets/WhatsApp.jpeg', // Ruta de la imagen              
          width: 50, // Ancho de la imagen superpuesta
          height: 50, // Alto de la imagen superpuesta
      ),
    ),
  );
}

Widget carritoCom(BuildContext context) {
  return Positioned(
    top: 90, // Cambia esto para mover el widget verticalmente
    left: 310, // Cambia esto para mover el widget horizontalmente
    child: InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const pag_compras()),
          );
      },
      child: Image.asset(
        'assets/CarritoCompras.jpeg', // Ruta de la imagen              
          width: 65, // Ancho de la imagen superpuesta
          height: 65, // Alto de la imagen superpuesta
      ),
    ),
  );
}


