import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final AnimationController? animationController;
  HomePage(this.animationController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.yellow,
            height: MediaQuery.of(context).size.height*0.4,
          ),
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.yellow,
            height: MediaQuery.of(context).size.height*0.4,
          ),
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.yellow,
            height: MediaQuery.of(context).size.height*0.4,
          ),
        ],
      ),
    );
  }

}