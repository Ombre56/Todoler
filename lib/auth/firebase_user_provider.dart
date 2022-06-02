import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TodolerFirebaseUser {
  TodolerFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

TodolerFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TodolerFirebaseUser> todolerFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<TodolerFirebaseUser>(
        (user) => currentUser = TodolerFirebaseUser(user));
