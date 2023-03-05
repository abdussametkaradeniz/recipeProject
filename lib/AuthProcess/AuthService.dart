import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/AuthProcess/Login/Login.dart';

class AuthService {
  static Future<User?> signIn({
    required String email,
    required String password,
    required String name,
    required String lastName,
  }) async {
    print("auth service çalıştı");
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
      await user!.updateDisplayName(name);
      await user.reload();
      user = auth.currentUser;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print("The password provided is too weak");
      } else if (e.code == 'email-already-in-use') {
        print("The account already exist for that email");
      }
    } catch (e) {
      print(e);
    }
    return user;
  }

  //log in
  static Future<User?> LoginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;
      if (!user!.emailVerified) {
        await user.sendEmailVerification();
      } else {
        print("Email dogrulanmis");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided.');
      }
    }
    return user;
  }

  static void signOut(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.signOut();
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Login()));
  }
}
