import 'package:firebase_auth/firebase_auth.dart';

import '../../features/login/data/user_data_model.dart';

class FireBaseAuthServices {
  FireBaseAuthServices._();
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<String> signIn({required UserDataModel userData}) async {
    try {
      final response = await _auth.signInWithEmailAndPassword(
          email: userData.name, password: userData.pasword);

      return response.user?.email ?? "empty email";
    } on FirebaseAuthException catch (e) {
      return e.message ?? "empty message";
    }
  }
}
