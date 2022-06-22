import 'package:developers_community/screens/password_recovery/recovery_code_page.dart';
import 'package:developers_community/screens/sign_in_page.dart';
import 'package:developers_community/screens/splash_screen.dart';
import 'package:developers_community/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../const/text_styles.dart';

class PasswordRecoveryPage extends StatelessWidget {
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
              leftCallback: () => Navigator.pop(context),
            ),
            Padding(
              padding: EdgeInsets.only(top: val),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recupera tu',
                    style: GoogleFonts.roboto(textStyle: formTitle),
                  ),
                  Text(
                    'contraseña',
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
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
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
                        hintText: 'E-mail',
                        hintStyle: GoogleFonts.roboto(color: Colors.grey[400]),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                        prefixIcon: Icon(Icons.mail, color: Colors.grey[400])),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
              ],
            ),
            SizedBox(
              height: 26,
            ),
            Container(
              height: 50.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PasswordCodePage()));
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
                                "Continuar",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                    textStyle: splashBtnTextStyle),
                              ),
                              SizedBox(width: 4,),
                              Icon(
                                FontAwesomeIcons.arrowRight,
                                size: 20, //Icon Size
                                color: Colors.white, //Color Of Icon
                              ),
                            ],
                          )
                        ],
                      )),
                ),
              ),
            ),
            SizedBox(height: 8,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: GoogleFonts.roboto(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  child: const Text('cancelar', style: TextStyle(color: Colors.grey),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
