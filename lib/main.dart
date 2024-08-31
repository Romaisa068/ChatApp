import 'package:firebase_app/screens/caht_screen.dart';
import 'package:firebase_app/screens/login_screen.dart';
import 'package:firebase_app/screens/registration.dart';
import 'package:firebase_app/screens/welcome.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDGIW8kHngR50KqRLeboH5UlaWWJffXKJ4",
            authDomain: "fir-835c0.firebaseapp.com",
            projectId: "fir-835c0",
            storageBucket: "fir-835c0.appspot.com",
            messagingSenderId: "572157049136",
            appId: "1:572157049136:web:28bc767d74b5a4679230f5",
            measurementId: "G-YVQH6YN897"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id ,
      routes: {
        WelcomeScreen.id : (context) => const WelcomeScreen(),
        LoginScreen.id : (context) => const LoginScreen(),
        Registeration.id : (context) => const Registeration(),
        ChatScreen.id : (context) => const ChatScreen()
      },
    );
  }
}