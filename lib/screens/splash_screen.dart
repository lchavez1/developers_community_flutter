import 'package:developers_community/const/text_styles.dart';
import 'package:developers_community/screens/register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset('assets/images/logo.png'),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('< ', style: GoogleFonts.roboto(textStyle: title_diamond_notation)),
                        Text('Developers', style: GoogleFonts.roboto(textStyle: title_text)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Community ', style: GoogleFonts.roboto(textStyle: title_text)),
                        Text('/>', style: GoogleFonts.roboto(textStyle: title_diamond_notation)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                elevation: 10,
                minWidth: 170,
                height: 50,
                color: Colors.transparent,
                child: Text('Empezar', style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }

}