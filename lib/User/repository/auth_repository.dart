import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_auth_api.dart';

class AuthRepository{
  final _firebaseAuthApi = FirebaseAuthAPI();
  Future<FirebaseUser> signInFirebase() => _firebaseAuthApi.signIn();
  signOut() => _firebaseAuthApi.signOut();
}