
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:yantralive/constant/App_Color.dart';
import 'package:yantralive/presentation/View/HomePage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              textTheme: GoogleFonts.robotoTextTheme(),
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.grey,
                  inversePrimary: AppColor.inversePrimaryColor),
              useMaterial3: true,
            ),
            home: child,
          );
        },
        child: const MyHomePage(title: 'YANTRALIVE'));
  }
}

