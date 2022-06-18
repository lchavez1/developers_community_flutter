import 'package:developers_community/screens/sign_in_page.dart';
import 'package:developers_community/screens/splash_screen.dart';
import 'package:developers_community/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../const/text_styles.dart';

class NewPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showToast() => Fluttertoast.showToast(
      msg: 'Deshabilitado temporalmente',
      toastLength: Toast.LENGTH_SHORT,
    );

    double val = MediaQuery.of(context).size.height / 8;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.all(8),
        color: Colors.white,
        child: Column(
          children: [
            CustomAppBar(
              Icons.arrow_back,
              leftCallback: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SplashScreen())),
            ),
            Padding(
              padding: EdgeInsets.only(top: val),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vuelve a crear',
                    style: GoogleFonts.roboto(textStyle: formTitle),
                  ),
                  Text(
                    'tu contraseña',
                    style: GoogleFonts.roboto(textStyle: formTitle),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 330,
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: GoogleFonts.roboto(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.normal,
                    ),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Nueva contraseña',
                        hintStyle: GoogleFonts.roboto(color: Colors.grey[400]),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                        prefixIcon: Icon(Icons.lock, color: Colors.grey[400])
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 330,
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    style: GoogleFonts.roboto(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.normal,
                    ),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Repite tu nueva contraseña',
                        hintStyle: GoogleFonts.roboto(color: Colors.grey[400]),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                        prefixIcon: Icon(Icons.lock, color: Colors.grey[400])),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Container(
              height: 50.0,
              child: RaisedButton(
                onPressed: () {
                  //Navigator.push(context,MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(0, 59, 129, 1),
                          Color.fromRGBO(0, 132, 255, 1),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Container(
                      constraints:
                      BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "GUARDAR",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                    textStyle: splashBtnTextStyle),
                              ),
                            ],
                          )
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
