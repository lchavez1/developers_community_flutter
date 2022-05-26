import 'package:developers_community/screens/splash_screen.dart';
import 'package:developers_community/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/text_styles.dart';

class RegisterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double val = MediaQuery.of(context).size.height / 5;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        color: Colors.white,
        child: Column(
          children: [
            CustomAppBar(Icons.arrow_back, leftCallback: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen())),),
            Padding(
              padding: EdgeInsets.only(top: val),
              child: Column(
                children: [
                  Text('Crea una', style: GoogleFonts.roboto(textStyle: title_text),),
                  Text('nueva cuenta', style: GoogleFonts.roboto(textStyle: title_text),)
                ],
              ),
            ),
            SizedBox(height: 16,),
            Column(
              children: [
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    icon: Icon(Icons.mail_outline)
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contraseña',
                    icon: Icon(Icons.lock_outline),
                  ),
                )
              ],
            ),
            SizedBox(height: 24,),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: <Color>[
                      Color.fromRGBO(0, 59, 129, 1),
                      Color.fromRGBO(0, 132, 255, 1),
                    ],
                    tileMode: TileMode.mirror,
                  ),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: MaterialButton(
                onPressed: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                elevation: 10,
                minWidth: 170,
                height: 50,
                color: Colors.transparent,
                child: Text('Registrarse', style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),),
              ),
            ),
            SizedBox(height: 24,),
            Text('Puedes continuar con:'),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.facebook, size: 60,),
                Icon(Icons.facebook, size: 60,),
                Icon(Icons.facebook, size: 60,),
              ],
            ),
          ],
        ),
      ),
    );
  }

}