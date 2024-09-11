import 'package:firebase_auth/firebase_auth.dart';

Future<User?> signInWithEmailAndPassword(String email, String password) async {
  FirebaseAuth auth = FirebaseAuth.instance;

  try {
    final UserCredential userCredential =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  } catch (e) {
    print('Error signing in with email and password: $e');
    return null;
  }
}
