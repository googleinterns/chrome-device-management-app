import 'package:chrome_management_app/models/auth.dart';
import 'package:chrome_management_app/views/list.dart';
import 'package:flutter/material.dart';

/// View that will hold the Google Sign In Authenication.
class LogIn extends StatefulWidget {
  /// Creates state of the view.
  @override
  _LogInState createState() => _LogInState();
}

/// LogIn View state.
class _LogInState extends State<LogIn> {
  /// Message that appears on the login view.
  String _message = 'Google Sign In';

  /// Initial state of the view widget.
  @override
  void initState() {
    super.initState();
  }

  /// Google Auithenticate method, if it is succesful it sends user to
  /// list of devices view.
  void authenticate() async {
    GoogleAuth.authenticate().then((value) {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    DevicesListView(token: value)),
            (Route<dynamic> route) => false);
      });
    }).catchError((e) {
      setState(() {
        // TODO #34 handle errors
        _message = 'Got error $e\nPlease try again.';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chrome Device Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Display message
              Text('$_message\n'),
              const SizedBox(height: 80),
              RaisedButton(
                child: Text('Authenticate'),
                onPressed: () {
                  this.authenticate();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
