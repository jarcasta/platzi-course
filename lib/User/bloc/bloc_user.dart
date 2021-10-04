import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trip_app/User/repository/auth_repository.dart';


class UserBloc implements Bloc{

  final _auth_repository = AuthRepository();

  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;

  Future<FirebaseUser> signIn() {
    return _auth_repository.signInFirebase();
  }

  void signOut(){
    _auth_repository.signOut();
  }

  @override
  void dispose() {

  }
}