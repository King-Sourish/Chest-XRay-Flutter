import 'package:cognix_chest_xray/Nishkarsh/chooseimage.dart';
import 'package:cognix_chest_xray/Nishkarsh/uploadprompt.dart';
import 'package:cognix_chest_xray/Saumya/forgot_password_page.dart';
import 'package:cognix_chest_xray/Saumya/login_page.dart';
import 'package:cognix_chest_xray/Saumya/reset_password_page.dart';
import 'package:cognix_chest_xray/Sourish/Screens/doctor_detail_screen.dart';
import 'package:cognix_chest_xray/Sourish/Screens/doctor_model.dart';
import 'package:cognix_chest_xray/Sourish/Screens/doctor_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

const primary = Color(0xff4268b0);
const background = Color(0xffcde2f5);
const backendURL = 'http://51.20.3.117';


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
        'login/' : (context) => const LoginPage(),
        'patient_menu/': (context) => const UploadPromptScreen(),
        'upload_pic/': (context) => const ChooseImageScreen(),
        'forgot-password/': (context) => ForgotPasswordPage(),
        // 'dummy-screen/' : (context) => const MyDummy(),
        'reset-pswd/' : (context) => const ResetPasswordPage(email: 'email',), 
        // 'profileheader/': (context) => ProfileHeader(),
        'doctor_detail/': (context) => DoctorDetailScreen(doctor: ModalRoute.of(context)!.settings.arguments as Doctor),
        'doctor_search/': (context) => SearchScreen(),
      },
    );
  }
}