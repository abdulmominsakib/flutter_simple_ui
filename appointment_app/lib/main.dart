import 'package:appointment_app/constants/app_colors.dart';
import 'package:appointment_app/constants/app_defaults.dart';
import 'package:appointment_app/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctors Appointment',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: AppColors.black,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            primary: AppColors.primary,
            elevation: 0,
            padding: const EdgeInsets.all(AppDefaults.padding),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
