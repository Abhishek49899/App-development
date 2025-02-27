import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dev/firebase_options.dart';
import 'package:flutter_dev/pages/Home_page.dart';
import 'package:flutter_dev/pages/login_page.dart';
import 'package:flutter_dev/pages/main_page.dart';
import 'package:flutter_dev/pages/stud_page.dart';
import 'package:flutter_dev/pages/teachH_page.dart';
import 'package:flutter_dev/styles/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(
      scaffoldBackgroundColor: AppColors.background
    ),
    initialRoute: '/',
    routes: {
      '/':(context) => LoginPage(),
      '/home':(context) => HomePage(),
      '/main':(context) => MainPage(),
      '/stud' :(context) => StudPage(),
      

    },
  );
    
  }
}
