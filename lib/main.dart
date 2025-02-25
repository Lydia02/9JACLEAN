import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'core/config/app_routes.dart';
import 'presentation/screens/auth/splash_screen.dart';
import 'presentation/screens/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '9JA Clean',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (context) => SplashScreen(),
        // AppRoutes.home: (context) => HomeScreen(),
      },
    );
  }
}
