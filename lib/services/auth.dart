import 'package:firebase_auth/firebase_auth.dart';
import 'package:iharaka/models/MyUser.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create user object
  MyUser? _userFromFirebaseUser(User? user) {
      return user != null ? MyUser(uid : user.uid): null;
  }

  // Auth change User stream
  Stream<MyUser?> get user {
    // return _auth.authStateChanges().map((User? user) => _userFromFirebaseUser(user!));
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }
  // Sign In with Email & Password

  // Register with Email & Password

  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user ;
      return _userFromFirebaseUser(user);

    } catch(e){
      print(e.toString());
      return null;
    }
  }

  // Sign Out

}