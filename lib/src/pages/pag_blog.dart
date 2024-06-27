import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pupsy/src/pages/pag_compras.dart';

// ignore: camel_case_types
class Pag_blog extends StatelessWidget {
  const Pag_blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplicacion Pupsy",
      home: pag_blog(), // Aquí está el cambio
    );
  }
}

// ignore: camel_case_types
class pag_blog extends StatefulWidget {
  const pag_blog({Key? key}) : super(key: key);

  @override
  State<pag_blog> createState() => _pag_blogState();
}

// ignore: camel_case_types
class _pag_blogState extends State<pag_blog> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
      fit: StackFit.expand, // Hace que el Stack ocupe todo el espacio disponible
      children: [
        cuerpoR(context),
        Positioned(
          top: 430, // Cambia esta posición para mover el carrusel hacia abajo
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 70.0), // Ajusta el margen horizontal según sea necesario
            child: CarouselSlider(
              options: CarouselOptions(height: 300.0),
              items: [
                'swiper1.jpeg',
                'swiper2.jpeg',
                'swiper3.jpeg',
                'swiper4.jpeg'
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Image.asset('assets/$i', fit: BoxFit.fill),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ),
      ],
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
      child: Image.asset('assets/ImagenBlog.jpeg',
        width: 200, // Ancho de la imagen superpuesta
        height: 200, // Alto de la imagen superpuesta
        )
      ),
      whatsapp(),
      facebook(),
      instagram(),
      carritoCom(context),
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
}