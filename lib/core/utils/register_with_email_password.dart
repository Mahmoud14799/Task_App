import 'package:firebase_auth/firebase_auth.dart';

Future<User?> registerWithEmailAndPassword(
    String email, String password) async {
  FirebaseAuth auth = FirebaseAuth.instance;

  try {
    final UserCredential userCredential = await auth
        .createUserWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  } catch (e) {
    print('Error registering with email and password: $e');
    return null;
  }
}
