import 'package:flutter/material.dart';
import 'package:qr_code/ui/home_screen.dart';
import 'package:qr_code/ui/qr_generator_screen.dart';
import 'package:qr_code/ui/qr_scanner_screen.dart';
import 'package:qr_code/ui/splash_screen.dart';
import 'package:device_preview/device_preview.dart';


void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => MainApp(), // Wrap your app
  ),
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Manrope',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true
      ),
     initialRoute: '/',
     routes: {
      '/': (context) => const SplashScreen(),
      '/home': (context)=> const HomeScreen(),
      '/create':(context)=> const QrGeneratorScreen(),
      '/scan':(context)=> const QrScannerScreen(),
     },
    );
  }
}
