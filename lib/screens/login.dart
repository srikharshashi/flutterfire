import 'package:flutter/material.dart';
import 'package:flutterfire1/provider/provider.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child:Column(
          children: [
            Spacer(flex: 2,),
            Expanded(child: TextField(decoration: InputDecoration(hintText: "UserName"),),),
            Expanded(child:  TextField(decoration: InputDecoration(hintText: "Password"))),
            Expanded(child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(child: ElevatedButton(onPressed: (){
                    final provider=Provider.of<GoogleSignin>(context,listen:false);
                    provider.googlelogin();
                  }
                  , child: Text("Sign in"))
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Sign Up"))),
                ),

              ],
            ) ),


          ],
        )
      ),
    );
  }
}
