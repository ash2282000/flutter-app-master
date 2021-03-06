import 'package:firebase_auth/firebase_auth.dart';

Future<bool> login (String email, String password) async {
  try{
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return true;
  } catch(e) {
    print(e);
    return false;
  }
}

Future<bool> signup(String email, String password) async {
  try{
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return true;
  } on FirebaseAuthException catch(e) {
    if(e.code == 'weak-password') {
      print('The password entered is too weak');
    } else if(e.code == 'email-already-in-use'){
      print('An account already exists for the entered email');
    }
    return false;
  } catch(e){
    print(e.toString());
    return false;
  }
}