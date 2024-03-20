import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_ui/pages/book_appointment_page.dart';
import 'package:healthcare_ui/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'HealthCare App',
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(Brightness.light),
      routerConfig: _router,
    );
  }
}

ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(
    brightness: brightness,
    useMaterial3: true,
  );

  return baseTheme.copyWith(
    textTheme: GoogleFonts.manropeTextTheme(baseTheme.textTheme),
  );
}

var _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/book-appointment',
      name: 'book-appointment',
      builder: (context, state) => const BookAppointmentPage(),
    ),
  ],
);
