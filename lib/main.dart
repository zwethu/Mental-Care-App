import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mental_assistance_app/firebase_options.dart';
import 'package:mental_assistance_app/src/injector.dart';
import 'package:mental_assistance_app/src/presentation/pages/chat/chat_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    log("firebase info -> ${Firebase.app().options}");

    // initialize and setup get_it injector
    setupInjector();
  } on FirebaseException catch (e) {
    log("Firebase Error -> ${e.code}");
    log("Firebase Error -> ${e.message ?? "Empty Error message"}");
  } on Exception catch (e) {
    log("Error -> ${e.toString()}");
  } finally {
    runApp(const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ChatPage(),
    );
  }
}
