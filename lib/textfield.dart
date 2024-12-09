import 'package:flutter/material.dart';


class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller1;
  final TextEditingController controller2;
  final TextEditingController? controller3;
  final String hintText1;
  final String hintText2;
  final String? hintText3; 
  final bool obscureText1;
  final bool obscureText2;
  final bool? obscureText3; 

  const TextFieldWidget({
    super.key,
    required this.controller1,
    required this.controller2,
    this.controller3, 
    required this.hintText1,
    required this.hintText2,
    this.hintText3, 
    required this.obscureText1,
    required this.obscureText2,
    this.obscureText3, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          TextField(
            controller: controller1,
            obscureText: obscureText1,
            decoration: InputDecoration(
              hintText: hintText1,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.onSecondaryContainer),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.onSecondaryContainer),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: controller2,
            obscureText: obscureText2,
            decoration: InputDecoration(
              hintText: hintText2,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.onSecondaryContainer),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.onSecondaryContainer),
              ),
            ),
          ),

          if (controller3 != null) ...[
            const SizedBox(height: 16),
            TextField(
              controller: controller3!,
              obscureText: obscureText3 ?? false,
              decoration: InputDecoration(
                hintText: hintText3,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).colorScheme.onSecondaryContainer),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).colorScheme.onSecondaryContainer),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}