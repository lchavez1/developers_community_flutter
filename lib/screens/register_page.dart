import 'package:developers_community/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            CustomAppBar(Icons.arrow_back),
            Column(
              children: [
                Text('Crea una'),
                Text('nueva cuenta')
              ],
            ),
          ],
        ),
      ),
    );
  }

}