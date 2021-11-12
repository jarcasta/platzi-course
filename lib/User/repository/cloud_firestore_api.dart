 import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:platzi_trip_app/User/model/user.dart';

class CloudFirestoreAPI{
  final String USERS = 'users';
  final String PLACE = 'places';

  final Firestore _db = Firestore.instance;

  void updateUserData(User user) async{
    DocumentReference ref = _db.collection(USERS).document(user.uid);

    return ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email' : user.email,
      'photoUrl' : user.photoUrl,
      'myPlaces': user.myPlaces,
      'myFavoritePlaces' : user.myFavoritePlaces,
      'lastSignIn' : DateTime.now()
    }, merge: true);
  }
}