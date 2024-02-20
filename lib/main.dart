// ignore_for_file: library_private_types_in_public_api
import 'package:flutter_native_splash/flutter_native_splash.dart';

//Customize theme and Functions
import 'package:flutter/material.dart';


//Screens
import './screen/_dashboard.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}
