import 'package:flutter/material.dart';
import 'package:mck_pay/authpage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://ztrjqqmeduxbamylhfjf.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp0cmpxcW1lZHV4YmFteWxoZmpmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwNjcwNDUsImV4cCI6MjA1NjY0MzA0NX0.J0v_uxhBn_9aXLbsfG3qJb_AhL2O3V6SvmAn8l3oc6k',
  );
  runApp(const AppTheme());
}

class AppTheme extends StatelessWidget {
  const AppTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.blue),
              ),
            ),
            backgroundColor: WidgetStatePropertyAll(Colors.transparent),
            foregroundColor: WidgetStatePropertyAll(Colors.black),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            backgroundColor: WidgetStatePropertyAll(Colors.lightBlue),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {'/': (context) => AuthPage()},
    );
  }
}
