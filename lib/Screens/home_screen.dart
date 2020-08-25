import 'package:NavPractice/Screens/test_screen_two.dart';
import 'package:NavPractice/State/navigator_custom_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _navState = Provider.of<NavCustomState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Container(child: Text("Home")),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenTwo()));
            },
            child: Text("Press Me"),
          ),
          RaisedButton(
            onPressed: () => _navState.setLogin(),
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
