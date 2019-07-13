import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'login.dart';


class ProfilePage extends StatelessWidget {
  final UserDetails userDetails;
  ProfilePage({Key key,@required this.userDetails}):super(key:key);

  @override
  Widget build(BuildContext context) {
    final GoogleSignIn _gSignIn=GoogleSignIn();
    return Scaffold(
      appBar: AppBar(
        title: Text(this.userDetails.userName),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.signal_cellular_4_bar,size: 20.0,color: Colors.white,),
            onPressed: (){
              _gSignIn.signOut();
              print("signed out");
            },
          )
        ],
      ),
    );
  }
}
