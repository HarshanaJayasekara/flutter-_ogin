import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  final String pageName;
  final String txtName;

  const IconBtn({Key? key, required this.pageName, required this.txtName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, pageName);
          },
          child: Text(txtName),
        ),
        SizedBox(width: 25),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, txtName);
          },
          icon: const Icon(
            Icons.arrow_forward,
          ),
        ),
      ],
    );
  }
}

class mm extends StatelessWidget {
  final String pas;
  mm({super.key, required this.pas});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade100,
          filled: true,
          hintText: '$pas',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
