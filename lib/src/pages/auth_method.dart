import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethod {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

Future<String> loginUser({
    required String correo,
    required String contrasena,
  }) async {
    try {
      if (correo.isNotEmpty && contrasena.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(email: correo, password: contrasena);
        return "Inicio de sesión exitoso";
      } else {
        return "Por favor ingrese todos los campos";
      }
    } catch (error) {
      return "Error al iniciar sesión: $error";
    }
  }


  Future<void> signOut() async {
    await _auth.signOut();
  }

 Future<String> signupUser({
  required String nombreApe,
  required String cedula,
  required String numeroCel,
  required String ciudad,
  required String correo,
  required String contrasena,
  required String confirmarContra,
}) async {
  try {
    // Validar que el correo electrónico y la contraseña no estén vacíos o nulos
    if (correo.isEmpty || contrasena.isEmpty) {
      return "El correo electrónico y la contraseña no deben ser nulos ni vacíos";
    }
    
    // Validar que la contraseña coincida con la confirmación
    if (contrasena != confirmarContra) {
      return "Las contraseñas no coinciden";
    }

    // Registrar el usuario en Firebase Authentication
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
      email: correo,
      password: contrasena,
    );

    // Obtener el ID del usuario creado
    String userId = userCredential.user!.uid;

    // Guardar los datos adicionales en Firestore
    await _firestore.collection("users").doc(userId).set({
      'nombreApe': nombreApe,
      'cedula': cedula,
      'numeroCel': numeroCel,
      'ciudad': ciudad,
      'correo': correo,
    });

    return "Usuario registrado exitosamente";
  } catch (error) {
    return "Error al registrar usuario: $error";
  }
}

}
