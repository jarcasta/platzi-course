import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trip_app/Place/model/place.dart';
import 'package:platzi_trip_app/Place/repository/firebase_storage_repository.dart';
import 'package:platzi_trip_app/Place/ui/widgets/card_image.dart';
import 'package:platzi_trip_app/User/model/user.dart';
import 'package:platzi_trip_app/User/repository/auth_repository.dart';
import 'package:platzi_trip_app/User/repository/cloud_firestore_api.dart';
import 'package:platzi_trip_app/User/repository/cloud_firestore_repository.dart';
import 'package:platzi_trip_app/User/ui/widgets/image_profile_card.dart';

class UserBloc implements Bloc {
  final _auth_repository = AuthRepository();

  Stream<FirebaseUser> streamFirebase =
      FirebaseAuth.instance.onAuthStateChanged;

  Stream<FirebaseUser> get authStatus => streamFirebase;

  Future<FirebaseUser> get currentUser => FirebaseAuth.instance.currentUser();

  Future<FirebaseUser> signIn() => _auth_repository.signInFirebase();
  final _cloudFirestoreRepository = CloudFirestoreRepository();

  void updateUserData(User user) =>
      _cloudFirestoreRepository.updateUserDataFirestore(user);

  Future<void> updatePlaceData(Place place) =>
      _cloudFirestoreRepository.updatePlaceData(place);
  Stream<QuerySnapshot> placesListString =
      Firestore.instance.collection(CloudFirestoreAPI().PLACES).snapshots();

  Stream<QuerySnapshot> get placesStream => placesListString;

  List<ImageProfileCard> buildMyPlaces(
          List<DocumentSnapshot> placesListSnapshot) =>
      _cloudFirestoreRepository.buildMyPlaces(placesListSnapshot);

  List<CardImageWithIcon> buildPlaces(List<DocumentSnapshot> placesListSnapshot) => _cloudFirestoreRepository.buildPlaces(placesListSnapshot);

  Stream<QuerySnapshot> myPlacesListStream(String uid) => Firestore.instance
      .collection(CloudFirestoreAPI().PLACES)
      .where(
        'userOwner',
        isEqualTo: Firestore.instance.document("${CloudFirestoreAPI().USERS}/${uid}"))
      .snapshots();

  final _firebaseStorageRepository = FirebaseStorageRepository();

  Future<StorageUploadTask> uploadFile(String path, File image) =>
      _firebaseStorageRepository.uploadFile(path, image);

  void signOut() {
    _auth_repository.signOut();
  }

  @override
  void dispose() {}
}
