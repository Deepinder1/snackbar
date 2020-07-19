import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ContactPage(),
  ));
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: null,
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('SnackBar'),
      //onpressingthe raised button
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Hello This is SnackBar'),
          //settignthe duration
          duration: Duration(seconds: 4),
          //set action
          action: SnackBarAction(
            label: 'Hit me (Action)',
            onPressed: () {
              //showing another snackBar bcoz action button is pressed
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Another SnackBar here',
                  ),
                ),
              );
            },
          ),
        ));
      },
    );
  }
}
