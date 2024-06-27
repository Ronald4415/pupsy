import 'package:flutter/material.dart';
import 'package:pupsy/src/pages/pag_compras.dart';

// ignore: camel_case_types
class Pag_gatos extends StatelessWidget {
  const Pag_gatos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplicacion Pupsy",
      home: Pag_gatos(),
    );
  }
}

// ignore: camel_case_types
class pag_gatos extends StatefulWidget {
  const pag_gatos({Key? key}) : super(key: key);

  @override
  State<pag_gatos> createState() => _pag_gatosState();
}

// ignore: camel_case_types
class _pag_gatosState extends State<pag_gatos> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          cuerpoR(context),
        ],
      ),
    );
  }
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
      Positioned(
        top: 59,
        left: 0,
        right: 220,
      child: Image.asset('assets/FotoPerfil.png',
        width: 90, // Ancho de la imagen superpuesta
        height: 90, // Alto de la imagen superpuesta
        )
      ),
      const Positioned(
        top: 325,
        left: 50,
        right: 0,
        child: Text(
          "Nombre del Usuario",
          style: TextStyle(
            color: Color.fromARGB(255, 93, 86, 164),
            fontSize: 10, // Tamaño de la fuente
            height: -32,
          ),
        ),
      ),
      Positioned(
        top: 200,
        left: 0,
        right: 0,
      child: Image.asset('assets/GatoImagen.jpeg',
        width: 200, // Ancho de la imagen superpuesta
        height: 200, // Alto de la imagen superpuesta
        )
      ),
      carritoCom(context),
      facebook(),
      whatsapp(),
      instagram(),
      medicamentosG(),
      juguetesG(),
      accesoriosG(),
    ],
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

Widget medicamentosG() {
  return Positioned(
    top: 410, // Cambia esto para mover el widget verticalmente
    left: 200, // Cambia esto para mover el widget horizontalmente
    right: 0, 
    child: InkWell(
      onTap: () {
      },
      child: Image.asset(
        'assets/MedicamentosG.jpeg', // Ruta de la imagen              
          width: 150, // Ancho de la imagen superpuesta
          height: 150, // Alto de la imagen superpuesta
      ),
    ),
  );
}

Widget juguetesG() {
  return Positioned(
    top: 570, // Cambia esto para mover el widget verticalmente
    left: 0, // Cambia esto para mover el widget horizontalmente
    right: 0,
    child: InkWell(
      onTap: () {
      },
      child: Image.asset(
        'assets/JuguetesG.jpeg', // Ruta de la imagen              
          width: 160, // Ancho de la imagen superpuesta
          height: 160, // Alto de la imagen superpuesta
      ),
    ),
  );
}

Widget accesoriosG() {
  return Positioned(
    top: 410, // Cambia esto para mover el widget verticalmente
    left: 0, // Cambia esto para mover el widget horizontalmente
    right: 200, 
    child: InkWell(
      onTap: () {
      },
      child: Image.asset(
        'assets/AccesoriosG.jpeg', // Ruta de la imagen              
          width: 150, // Ancho de la imagen superpuesta
          height: 150, // Alto de la imagen superpuesta
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
