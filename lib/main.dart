import 'package:flutter/material.dart';
import 'package:flutterfire1/provider/provider.dart';
import 'package:flutterfire1/screens/login.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( Myapp());
}


class Myapp extends StatefulWidget {

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignin(),
        child: Login(),
      ),
    )
    );
  }
}
