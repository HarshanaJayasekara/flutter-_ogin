import 'package:flutter/material.dart';
import 'package:login/widget/button.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  var Password;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/1.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Register now')),
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30, left: 35),
              child: const Text(
                "Welcome \n Back",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 33,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2,
                    left: 35,
                    right: 35),
                child: Column(
                  children: [
                    /*   Mm(pas: 'Name', texpass: false),
                    const SizedBox(height: 30),
                    Mm(pas: 'Email', texpass: false),
                    const SizedBox(height: 30),
                    Mm(pas: 'Password', texpass: true),
                    const SizedBox(height: 30),
                    Mm(pas: 'Confirm Password', texpass: true),*/
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: const Color(0xff4c505b),
                          child: IconButton(
                            onPressed: () {
                              print('Name');
                            },
                            icon: const Icon(Icons.arrow_forward),
                          ),
                        ),
                      ],
                    ),
                    IconBtn(pageName: 'login', txtName: 'login'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
