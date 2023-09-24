
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth
{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> signUpUser({
    required String email,
    required String pass,
    required String username,
    // required String bio,
  })
  async {
    String result="Error";
    try
    {
      if(email.isNotEmpty || pass.isNotEmpty || username.isNotEmpty)
      {
        //register user
        UserCredential cred= await _auth.createUserWithEmailAndPassword(email: email, password: pass);



        // model.User user=model.User(email: email, pass: pass, username: username, bio: bio, photourl: download_link, followers: [], following: [],uid:cred.user!.uid);

        //add user to database
        // await _firestore.collection('users').doc(cred.user!.uid).set(user.toJson());
        result="Sucess";
      }
    }
    catch(err)
    {
      result=err.toString();
    }

    return result;
  }

  Future<String> login_with_user({
    required String email,
    required String pass
  })
  async {
    String result="error";
    try
    {
      if(email.isNotEmpty && pass.isNotEmpty)
      {
        await _auth.signInWithEmailAndPassword(email: email, password: pass);
        result="Sucess";
      }
    }
    catch(err)
    {
      result=err.toString();
    }
    return result;
  }

}