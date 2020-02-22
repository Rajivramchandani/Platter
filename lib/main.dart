import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:platter/screens/ProfileScreen.dart';
import 'package:platter/screens/getstarted.dart';
import 'package:platter/Components/rounded_button.dart';

void main() => runApp(MyApp());
bool isSigned = false;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Signin APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home : GetStarted(),
    );
  }
}

class GoogleSignApp extends StatefulWidget {
  @override
  _GoogleSignAppState createState() => _GoogleSignAppState();
}

class _GoogleSignAppState extends State<GoogleSignApp> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googlSignIn = GoogleSignIn();

  Future<FirebaseUser> _signIn(BuildContext context) async {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('Please sign in'),
    ));

    final GoogleSignInAccount googleUser = await _googlSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
    await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    FirebaseUser userDetails =
        (await _firebaseAuth.signInWithCredential(credential)).user;

    UserDetails details = UserDetails(
      userDetails.displayName,
      userDetails.photoUrl,
      userDetails.email,
    );
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProfileScreen(detailsUser: details),
      ),
    );
    return userDetails;
  }

  void isSignedin() async {
    bool isSigned = await _googlSignIn.isSignedIn();
    FirebaseUser firebaseuser = await _firebaseAuth.currentUser();
    if (isSigned) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              ProfileScreen(
                  detailsUser: UserDetails(firebaseuser.displayName,
                      firebaseuser.photoUrl, firebaseuser.email)),
        ),
      );
    } else {
      print('signed out');
    }
  }

  @override
  void initState() {
    super.initState();
    isSignedin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) =>
            Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height,
                  child: Image.asset('assets/food-preparation-1709526.jpg',
                  fit: BoxFit.cover,),

                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 420.0),
                    Container(
                      width: 350.0,
                      child: Align(
                        alignment: Alignment.center,
                        child:
                            RoundedButton(
                                title: 'Sign in with google ',
                                showIcon: Icon(
                                  FontAwesomeIcons.google,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    _signIn(context)
                                        .then((FirebaseUser user) =>
                                        print(user))
                                        .catchError((e) => print(e)),
                              colors: Colors.black,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
      ),
    );
  }
}

class UserDetails {
  final String userName;
  final String photoUrl;
  final String userEmail;

  UserDetails(this.userName, this.photoUrl, this.userEmail);
}
