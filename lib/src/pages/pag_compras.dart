import 'package:flutter/material.dart';

// ignore: camel_case_types
class Pag_compras extends StatelessWidget {
  const Pag_compras({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplicacion Pupsy",
      home: Pag_compras(),
    );
  }
}

// ignore: camel_case_types
class pag_compras extends StatefulWidget {
  const pag_compras({Key? key}) : super(key: key);

  @override
  State<pag_compras> createState() => _pag_comprasState();
}

// ignore: camel_case_types
class _pag_comprasState extends State<pag_compras> {
  int dropdownValue = 1;

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
        child: Image.asset('assets/PerritoCompras.jpeg',
          width: 200, // Ancho de la imagen superpuesta
          height: 200, // Alto de la imagen superpuesta
          )
        ),
         const Positioned(
          top: 420,
          left: 120,
          right: 0,
          child: Text(
            "Hueso de hule para perro",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 10, // Tamaño de la fuente
            ),
          ),
        ),
        const Positioned(
          top: 440,
          left: 120,
          right: 0,
          child: Text(
            "99.99",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 10, // Tamaño de la fuente
            ),
          ),
        ),
        const Positioned(
          top: 450,
          left: 120,
          right: 0,
          child: Text(
            "(Valor por unidad del producto)",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 10, // Tamaño de la fuente
            ),
          ),
        ),
        const Positioned(
          top: 450,
          left: 35,
          right: 0,
          child: Text(
            "______________________________________",
            style: TextStyle(
              color: Color.fromARGB(255, 93, 86, 164),
              fontSize: 20, // Tamaño de la fuente
            ),
          ),
        ),
        Positioned(
          top: 400,
          left: 0,
          right: 280,
        child: Image.asset('assets/JugueteP.jpg',
          width: 70, // Ancho de la imagen superpuesta
          height: 70, // Alto de la imagen superpuesta
          )
        ),
        Positioned(
          top: 410,
          left: 330,
          child: DropdownButton<int>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(
              color: Colors.deepPurple
            ),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (int? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
              .map<DropdownMenuItem<int>>((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text(value.toString()),
                );
              })
              .toList(),
          ),
        ),
        const Positioned(
          top: 560,
          left: 35,
          right: 0,
          child: Text(
            "______________________________________",
            style: TextStyle(
              color: Color.fromARGB(255, 93, 86, 164),
              fontSize: 20, // Tamaño de la fuente
            ),
          ),
        ),
      const Positioned(
        top: 520,
        left: 120,
        right: 0,
        child: Text(
          "Juguete para gatos",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 10, // Tamaño de la fuente
          ),
        ),
      ),
      Positioned(
          top: 510,
          left: 330,
          child: DropdownButton<int>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(
              color: Colors.deepPurple
            ),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (int? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
              .map<DropdownMenuItem<int>>((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text(value.toString()),
                );
              })
              .toList(),
          ),
        ),
      const Positioned(
        top: 540,
        left: 120,
        right: 0,
        child: Text(
          "99.99",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 10, // Tamaño de la fuente
          ),
        ),
      ),
      const Positioned(
        top: 550,
        left: 120,
        right: 0,
        child: Text(
          "(Valor por unidad del producto)",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 10, // Tamaño de la fuente
          ),
        ),
      ),
      Positioned(
        top: 500,
        left: 0,
        right: 280,
      child: Image.asset('assets/JugueteG.jpg',
        width: 70, // Ancho de la imagen superpuesta
        height: 70, // Alto de la imagen superpuesta
        )
      ),
      const Positioned(
        top: 660,
        left: 35,
        right: 0,
        child: Text(
          "______________________________________",
          style: TextStyle(
            color: Color.fromARGB(255, 93, 86, 164),
            fontSize: 20, // Tamaño de la fuente
          ),
        ),
      ),
      const Positioned(
        top: 620,
        left: 120,
        right: 0,
        child: Text(
          "Shampoo para perros",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 10, // Tamaño de la fuente
          ),
        ),
      ),
      const Positioned(
        top: 640,
        left: 120,
        right: 0,
        child: Text(
          "99.99",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 10, // Tamaño de la fuente
          ),
        ),
      ),
      const Positioned(
        top: 650,
        left: 120,
        right: 0,
        child: Text(
          "(Valor por unidad del producto)",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 10, // Tamaño de la fuente
          ),
        ),
      ),
      Positioned(
        top: 600,
        left: 0,
        right: 280,
      child: Image.asset('assets/ShampooM.jpg',
        width: 70, // Ancho de la imagen superpuesta
        height: 70, // Alto de la imagen superpuesta
        )
      ),
      const Positioned(
        top: 720,
        left: 120,
        right: 0,
        child: Text(
          "Medicamento Perro y gatos",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 10, // Tamaño de la fuente
          ),
        ),
      ),
      const Positioned(
        top: 740,
        left: 120,
        right: 0,
        child: Text(
          "99.99",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 10, // Tamaño de la fuente
          ),
        ),
      ),
      const Positioned(
        top: 750,
        left: 120,
        right: 0,
        child: Text(
          "(Valor por unidad del producto)",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 10, // Tamaño de la fuente
          ),
        ),
      ),
      Positioned(
        top: 700,
        left: 0,
        right: 280,
      child: Image.asset('assets/MedicamentosPyG.jpg',
        width: 70, // Ancho de la imagen superpuesta
        height: 70, // Alto de la imagen superpuesta
        )
      ),
    ],
  );
}
}