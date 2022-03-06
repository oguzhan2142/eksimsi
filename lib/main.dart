import 'package:eksimsi/main_screen.dart';
import 'package:eksimsi/screen/sign_in_screen.dart';
import 'package:eksimsi/utils/colors.dart';
import 'package:eksimsi/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String initialRoute = Routes.signIn;
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      initialRoute = Routes.home;
    }
    return GetMaterialApp(
      title: 'Ekşimsi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: swatchPrimary,
        fontFamily: 'Baloo Bhai',
        scaffoldBackgroundColor: backgroundGrey,
      ),
      initialRoute: initialRoute,
      routes: {
        '/main': (p0) => MainScreen(),
        '/signIn': (p0) => SignInScreen(),
      },
    );
  }
}
