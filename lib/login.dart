import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'profile_page.dart';





class GoogleSignInPage extends StatefulWidget {
  @override
  _GoogleSignInPageState createState() => _GoogleSignInPageState();
}

class _GoogleSignInPageState extends State<GoogleSignInPage> {

  // final FirebaseAuth _firebaseAuth=FirebaseAuth.instance;
  // final GoogleSignIn _googleSignIn=new GoogleSignIn(
  //   scopes: ['email','https://www.googleapis.com/auth/contacts.readonly',
  //   ],
  // );
//   Future<FirebaseUser>_signIn()async{
//     Scaffold.of(context).showSnackBar(new SnackBar(content: new Text('Sign in')));
//     try {
//       final GoogleSignInAccount _googleSignInAccount = await _googleSignIn
//           .signIn();
//       final GoogleSignInAuthentication _googleSignInAuth = await _googleSignInAccount
//           .authentication;
//       final AuthCredential credential = GoogleAuthProvider.getCredential(
//           idToken: _googleSignInAuth.idToken,
//           accessToken: _googleSignInAuth.accessToken);

//       FirebaseUser userDetails = await _firebaseAuth.signInWithCredential(
//           credential);
//       ProviderDetails provideInfo = new ProviderDetails(userDetails.providerId);

//       List<ProviderDetails>providerData = new List<ProviderDetails>();
//       providerData.add(provideInfo);
//       UserDetails details = new UserDetails(
//         providerDetails: userDetails.providerId,
//         userName: userDetails.displayName,
//         userEmail: userDetails.email,
//         photoUrl: userDetails.photoUrl,
//         providerData: providerData,

//       );


//     Navigator.push(context, MaterialPageRoute(builder: (context)=>new ProfilePage(userDetails: details)));
//     return userDetails;
//     }catch(e){
//       print('Error was $e');
//     }
//   }





  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<FirebaseUser> _handleSignIn() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user = await _auth.signInWithCredential(credential);
    print("signed in " + user.displayName);
    return user;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('login'),
      ),
      body: Container(
        child: RaisedButton(onPressed: (){
          //_signIn().then((FirebaseUser user)=>print(user)).catchError((e)=>print(e));
          _handleSignIn()
              .then((FirebaseUser user) => print(user))
              .catchError((e) => print(e));
        },
          child: Text("sign in using goole"),
        ),
      ),
    );
  }
}



class UserDetails{
  final String providerDetails;
  final String userName;
  final String photoUrl;
  final String userEmail;
  final List<ProviderDetails> providerData;
  UserDetails({this.providerDetails,this.userName,this.photoUrl,this.userEmail,this.providerData});
}




class ProviderDetails{
  final String providerDetails;
  ProviderDetails(this.providerDetails);
}