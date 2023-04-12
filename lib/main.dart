import 'package:flutter/material.dart';
import 'package:hoof_boot_rebuild/splash_screen/splash_screen.dart';

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  // Define the primary swatch color with a color code
  final MaterialColor primaryColor = const MaterialColor(
    0xffdf1b0c, // Replace with your desired color code
    <int, Color>{
      50: Color(0xFFECEFF1),
      100: Color(0xFFCFD8DC),
      200: Color(0xFFB0BEC5),
      300: Color(0xFF90A4AE),
      400: Color(0xFF78909C),
      500: Color(0xFF5D6D7E),
      600: Color(0xFF546E7A),
      700: Color(0xFF455A64),
      800: Color(0xFF37474F),
      900: Color(0xFF263238),
    },
  );

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Application',
      theme: ThemeData(

        primarySwatch: primaryColor
      ),
      home: const SplashScreen(),
    );
  }
}