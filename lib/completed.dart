import 'package:flutter/material.dart';

void main() {
  runApp(const Completedpage());
}

class Completedpage extends StatelessWidget {
  const Completedpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF6BCDE6),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .center, //main axis the vertical axis in a column so this positions the children at the center of the vertical axis
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Container(
                width: 258,
                height: 245,
                child: new Image.asset(
                  '../assets/hand.png',
                  height: 60.0,
                  fit: BoxFit.cover,
                ),
                // child: FlutterLogo(size: 245),
              ),
              SizedBox(
                width: 285,
                height: 57,
                child: Text(
                  "Please check your email for appointment confirmation and details.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  icon: Icon(Icons.home_filled),
                  label: Text("Home"))
            ])));
  }
}
