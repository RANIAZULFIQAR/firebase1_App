import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// Initialize Firebase for both web and mobile
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Check if the app is running on the web
  if (kIsWeb) {
    // Web-specific Firebase initialization
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyCxu-5yA81LpSWW383pjHTlpnQ5RSikQJ0",
        authDomain: "new-firebase-a1ff8.firebaseapp.com",
        projectId: "new-firebase-a1ff8",
        storageBucket: "new-firebase-a1ff8.firebasestorage.app",
        messagingSenderId: "900755758532",
        appId: "1:900755758532:web:a5714c7be4157d6b9f5891",
      ),
    );
  } else {
    // Mobile (Android/iOS) Firebase initialization
    await Firebase.initializeApp();
  }
  // Run the app after Firebase initialization
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PostScreen(),
    );
  }
}
class PostScreen extends StatelessWidget {
  const PostScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase App'),
      ),
      body: const Center(
        child: Text('Firebase Initialized Successfully'),
      ),
    );
  }
}
