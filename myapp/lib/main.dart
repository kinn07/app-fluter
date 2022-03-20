import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Pages/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Pages/loginpage.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');
  print(email);
  runApp(MaterialApp(home: email == null ? LoginPage() : HomePage()));
  await Firebase.initializeApp();
  runApp(const App());
}
