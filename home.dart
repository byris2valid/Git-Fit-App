import 'package:flutter/material.dart';
import 'package:flutter_get_fit_app/components/my_button.dart';
import 'package:flutter_get_fit_app/textfield.dart';
import 'package:flutter_get_fit_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_get_fit_app/register_page.dart';


class Home extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();
 

   Home({super.key});

  @override 
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    
    return Scaffold(
        
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Icon(
              Icons.fitness_center,
              size: 150,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),

            const SizedBox(height: 25,),

            Text(
              "Get Fit",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSecondaryContainer,
                fontFamily: "Quicksand",
                letterSpacing: 5,
              ),
            ),
          const SizedBox(height: 25,),

          // TextFieldWidget
          TextFieldWidget(
            controller1: emailController,
            controller2: passwordController,
            hintText1: "Email",
            hintText2: "Password",
            obscureText1: false,
            obscureText2: true,
          ),
           const SizedBox(height: 25,),

          // Login in button 
          MyButton(
          text: "Login", 
          onTap: () {},
          ),

          const SizedBox(height: 25,),

          // Register now

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           Text(
            "Not a member?",
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSecondaryContainer,
              fontWeight: FontWeight.bold,
            ),
           ),
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage(
        onTap: () {
          Navigator.pushNamed(context, 'Register now');
          },
      )),
    );
  },
  child: Text(
    "Register now",
    style: TextStyle(
      color: Theme.of(context).colorScheme.onSecondaryContainer,
      fontWeight: FontWeight.bold,
    ),
  ),
)
          ],
          ),
          

        ],
       ),
   


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<ThemeProvider>(context, listen: false).toggleTheme(themeData: themeProvider.isDarkMode ? ThemeData.light() : ThemeData.dark());
        },
        child: Icon(
          themeProvider.isDarkMode ? Icons.dark_mode : Icons.light_mode,
        ),
      ),

    );

  }
}
