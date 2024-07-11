// ignore_for_file: unused_import

import 'package:example_app/dummy.dart';
import 'package:example_app/profileheader.dart';
import 'package:example_app/reset_password_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'forgot_password_page.dart';
import 'package:example_app/chooseimage.dart';
import 'package:example_app/uploadimage.dart';
import 'package:example_app/uploadprompt.dart';
import 'package:example_app/usermenu.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

const primary = Color(0xff4268b0);
const background = Color(0xffcde2f5);



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

      final ThemeData myTheme = ThemeData(
      primaryColor: const Color(0xff4268b0),
      scaffoldBackgroundColor: Colors.white,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xff4268b0),
          unselectedItemColor: Colors.grey),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff4268b0),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: primary, //or set color with: Color(0xFF0000FF)
    ));




    return MaterialApp(
      
      theme: myTheme,

      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      initialRoute: 'login/',
      routes: {
        //ChooseImageScreen
        //ProfileHeader
        'chooseimagescreeen/': (context) => ChooseImageScreen(),
        'forgot-password/': (context) => ForgotPasswordPage(),
        'login/' : (context) => const LoginPage(),
        'dummy-screen/' : (context) => const MyDummy(),
        'reset-pswd/' : (context) => ResetPasswordPage(email: 'email',), 
        'profileheader/': (context) => ProfileHeader(),

      },
    );
  }
}
      
//snm11feb@gmail.com
//snm11feb@123