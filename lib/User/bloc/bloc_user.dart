import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trip_app/Place/model/place.dart';
import 'package:platzi_trip_app/User/model/user.dart';
import 'package:platzi_trip_app/User/repository/auth_repository.dart';
import 'package:platzi_trip_app/User/repository/cloud_firestore_repository.dart';


class UserBloc implements Bloc{

  final _auth_repository = AuthRepository();

  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;

  Future<FirebaseUser> signIn() => _auth_repository.signInFirebase();
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(User user) => _cloudFirestoreRepository.updateUserDataFirestore(user);
  Future<void> updatePlaceData(Place place) => _cloudFirestoreRepository.updatePlaceData(place);

  void signOut(){
    _auth_repository.signOut();
  }

  @override
  void dispose() {

  }
}