import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class MainPage extends StatefulWidget{
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Developers community'),
      ),
      body: Stack(
          children: [
            BottomNavBar(size),
          ],
        ),
    );
  }
}