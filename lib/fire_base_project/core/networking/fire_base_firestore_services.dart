import 'package:cloud_firestore/cloud_firestore.dart';

class FireBaseFirestoreServices {
  FireBaseFirestoreServices._();

  // Get Firestore instance
  static final firestore = FirebaseFirestore.instance;
  // Access a collection
  final usersCollection = firestore.collection('users');

  static Future<String> getUsers() async {
    try {
      final snapshot =
          await firestore.collection('users').doc('S1G5vvWSjx4Gni2QvFVX').get();
      final data = snapshot.data();
      return data?['name'] ?? 'No name found';
    } catch (e) {
      return 'Error fetching users: $e';
    }
  }

  static Future<String> addUser(String name) async {
    try {
      await firestore.collection('users').add({
        'name': name,
      });
      return 'User added successfully';
    } catch (e) {
      return 'Error adding user: $e';
    }
  }
}
