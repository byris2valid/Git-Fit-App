import 'package:flutter/material.dart';
import 'package:flutter_get_fit_app/textfield.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;



   RegisterPage({
    super.key, 
    this.onTap 
    });

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmController = TextEditingController();
    
      @override
      Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
         child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 25.0,),
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: ThemeData().colorScheme.onSecondaryContainer,  
         ),

         const SizedBox(height: 25.0,),

         Text(
          "Register now to get started",
          style: TextStyle(
            fontSize: 16,
            color: ThemeData().colorScheme.onSecondaryContainer,
            fontWeight: FontWeight.bold,
          ),
         ),

         const SizedBox(height: 25.0,),

         TextFieldWidget(
          controller1: confirmController,
          hintText1: "Email",
          obscureText1: false,
          controller2: passwordController,
          hintText2: "Password",
          obscureText2: true,
          controller3: confirmController,
          hintText3: "Confirm Password",
          obscureText3: true,
          )

         
          ]
        ),
       ),
      ),
     );
   }
  }

