import 'package:flutter/material.dart';
import 'package:flutter_get_fit_app/home.dart';
import 'package:flutter_get_fit_app/themes/theme_provider.dart';
import 'package:provider/provider.dart'; 
import 'package:flutter_get_fit_app/register_page.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);  

    return MaterialApp(

      home: Home(), 
 routes: {
    'register': (context) => RegisterPage(),
  },
  theme: themeProvider.isDarkMode ? ThemeData.dark() : ThemeData.light(),
    );
  }
}
