import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

abstract class FirebaseInjectableModule {
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;
}
