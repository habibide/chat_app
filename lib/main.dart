import 'package:chat_app/core/constants.dart';
import 'package:chat_app/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://jabldblvepfxgbymdqti.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImphYmxkYmx2ZXBmeGdieW1kcXRpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDI3NTk4NzksImV4cCI6MjAxODMzNTg3OX0.HzEagx7o2LDB5VOKWlowIe20DhGKkEjGAAziwOe48E8',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Chat App',
      theme: appTheme,
      home: const SplashPage(),
    );
  }
}
