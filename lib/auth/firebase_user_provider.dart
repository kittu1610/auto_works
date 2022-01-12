import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AutoWorksFirebaseUser {
  AutoWorksFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

AutoWorksFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AutoWorksFirebaseUser> autoWorksFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<AutoWorksFirebaseUser>(
        (user) => currentUser = AutoWorksFirebaseUser(user));
