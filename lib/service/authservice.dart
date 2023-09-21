import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  final String uid;
  UserModel({required this.uid});
}

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  UserModel? _userFormFirebaseUser(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userFormFirebaseUser);
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future SignOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
