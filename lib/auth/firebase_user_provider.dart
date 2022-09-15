import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FerberFirebaseUser {
  FerberFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

FerberFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FerberFirebaseUser> ferberFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<FerberFirebaseUser>((user) => currentUser = FerberFirebaseUser(user));
