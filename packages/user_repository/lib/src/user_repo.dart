import 'package:firebase_auth/firebase_auth.dart';

import 'models/models.dart';

abstract class UserRepository {

  Stream<User?> get user;
  Future<void> signIn(String email, String password);
  Future<MyUser> signUp(MyUser myUser, String password);
  Future<void> setUserData(MyUser myUser);
  Future<void> logOut();

}