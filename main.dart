import 'package:flutter/material.dart';
import 'package:flutter_get_fit_app/home.dart'; 
import 'package:flutter_get_fit_app/themes/theme_provider.dart'; 
import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(), 
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  get provider => 0;

  @override
Widget build(BuildContext context) {
  final ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeProvider.themeMode, 
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const Home(), 
    );
  }
}

