import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edunation/modules/auth/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  Future<void> createUser(
      {required String email,
      required String password,
      required String phone,
      required String name}) async {
    try {
      final snapshot = await _firestore
          .collection("users")
          .where("email", isEqualTo: email)
          .get();

      if (snapshot.docs.isNotEmpty) {
        throw "User with this email already exists";
      } else {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        await _firestore.collection("users").doc(credential.user!.uid).set({
          "email": email,
          "name": name,
          "phone": phone,
          "uid": credential.user!.uid,
        });
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> login(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      final snapshot = await _firestore
          .collection("users")
          .doc(userCredential.user!.uid)
          .get();

      if (snapshot.exists) {
        return UserModel.fromJson(snapshot.data()!);
      } else {
        throw "No user record found";
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw ('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw ('Wrong password provided for that user.');
      }
    } catch (e) {
      rethrow;
    }
    throw "No user record found";
  }

  Future<void> resetPassword({required String email}) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        throw 'Inavlid email.';
      } else if (e.code == 'user-not-found') {
        throw 'User not found.';
      } else {
        throw "An unknown error occured, please try again later";
      }
    } catch (e) {
      throw "An unknown error occured, please try again later";
    }
  }

  Future<UserModel?> getCurrentUser() async {
    if (_auth.currentUser == null) {
      return null;
    }
    final snapshot =
        await _firestore.collection("users").doc(_auth.currentUser!.uid).get();

    if (snapshot.exists) {
      return UserModel.fromJson(snapshot.data()!);
    } else {
      return null;
    }
  }
}
