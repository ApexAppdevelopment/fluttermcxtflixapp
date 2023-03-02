import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class McxtFlixFirebaseUser {
  McxtFlixFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

McxtFlixFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<McxtFlixFirebaseUser> mcxtFlixFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<McxtFlixFirebaseUser>(
      (user) {
        currentUser = McxtFlixFirebaseUser(user);
        return currentUser!;
      },
    );
