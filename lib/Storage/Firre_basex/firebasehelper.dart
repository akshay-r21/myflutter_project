import 'package:firebase_auth/firebase_auth.dart';

class Firebasehelper{
  final FirebaseAuth  auth = FirebaseAuth.instance;
  get user => auth.currentUser; // to fetch curr logged in user

Future<String?> signUp({required String email,required String pwd}) async {
  try{
    await auth.createUserWithEmailAndPassword(email: email, password: pwd);
    return null;
  }on FirebaseAuthException catch(e){  //if reg fails an exp  msg will receive
    return e.message;
  }
}
//register
//Future<String?>
}