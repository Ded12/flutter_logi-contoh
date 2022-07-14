import 'package:flutter/material.dart';
import 'package:login/layers/layer_two.dart';
import 'package:login/layers/layer_one.dart';
import 'package:login/layers/layer_three.dart';

void main() {
  runApp(MaterialApp(
    title: "LoginPage",
    theme: ThemeData(
      fontFamily: "Poppins",
    ),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage('images/primaryBg.png'),
          fit: BoxFit.cover
    )),
      child: Stack(
        children: <Widget> [
          Positioned(
              top: 200,
              left: 59,
              child: Container(
                child: const Text(
                    'Login',
                     style: TextStyle(
                        fontSize: 48,
                        fontFamily: 'Poppins-Medium',
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 252, 252, 252)),
                )
                )),
            const Positioned(top: 290, right: 0, bottom: 0, child: LayerOne()),
            Positioned(top: 318, right: 0, bottom: 28, child: LayerTwo()),
            Positioned(top: 320, right: 0, bottom: 48, child: LayerThree()),
          ], 
        ),
      ),
    );
  }
}
