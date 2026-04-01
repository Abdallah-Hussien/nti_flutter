import 'package:firebase_auth/firebase_auth.dart';

import '../../features/auth/data/user_data.dart';

class FireBaseAuthServices {
  FireBaseAuthServices._();
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<String> signIn({required UserData userData}) async {
    try {
      final response = await _auth.signInWithEmailAndPassword(
          email: userData.email, password: userData.password);
      return '${response.user?.email} signed in successfully';
    } on FirebaseAuthException catch (e) {
      return e.message ?? "empty message";
    }
  }

  static Future<String> signUp({required UserData userData}) async {
    try {
      final response = await _auth.createUserWithEmailAndPassword(
          email: userData.email, password: userData.password);
      return '${response.user?.email} created successfully';
    } on FirebaseAuthException catch (e) {
      return e.message ?? "empty message";
    }
  }

  
}
