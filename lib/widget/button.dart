import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  final String pageName;
  final String txtName;

  const IconBtn({
    Key? key,
    required this.pageName,
    required this.txtName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController connController = TextEditingController(); // Create TextEditingController
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: connController, // Assign the TextEditingController to the TextField
          obscureText: false,
          decoration: InputDecoration(
            fillColor: Colors.grey.shade100,
            filled: true,
            hintText: 'Enter text', // Placeholder text
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                String inputString = connController.text; // Get the input string
                print('Input String: $inputString'); // Print the input string
              },
              child: Text('Print Input'),
            ),
            SizedBox(width: 25),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, pageName);
              },
              icon: const Icon(
                Icons.arrow_forward,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Mm extends StatelessWidget {
  final String pas;
  final bool texpass;
  final String conn;
  const Mm({
    Key? key,
    required this.pas,
    required this.texpass,
    required this.conn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: texpass,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade100,
        filled: true,
        hintText: pas,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
