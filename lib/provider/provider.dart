import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignin extends ChangeNotifier
{
  final googleSignIn=GoogleSignIn();

GoogleSignInAccount? _user;

GoogleSignInAccount get user => _user!;

Future googlelogin()async
{

  final googleUser=await googleSignIn.signIn();
  _user=googleUser;

  if(googleUser==null)
    {
      return ;
    }

  final googleAuth=await googleUser.authentication;

  final credential=GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  await FirebaseAuth.instance.signInWithCredential(credential);

  notifyListeners();


}




}
