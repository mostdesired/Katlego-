class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FocusNode _uidFocusNode = FocusNode();

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    // ...
  }
  FutureBuilder(
  future: _initializeFirebase(),
  builder: (context, snapshot) {
    if (snapshot.hasError) {
      return Text('Error initializing Firebase');
    } else if (snapshot.connectionState ==
        ConnectionState.done) {
      return LoginForm(focusNode: _uidFocusNode);
    }
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(
        CustomColors.firebaseOrange,
      ),
    );
  },
)

}
