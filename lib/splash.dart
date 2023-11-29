import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'login.dart';
import 'main.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    _navigtatetohome();
  }

  _navigtatetohome() async {
    await Future.delayed(Duration(milliseconds: 10000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(
                  title: " ",
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Latar Belakang
          Image.asset(
            'assets/img/cover.png',
            fit: BoxFit.cover,
          ),

          Positioned(
            bottom: 30, // Sesuaikan dengan posisi yang diinginkan dari bawah
            left: (MediaQuery.of(context).size.width - 100) / 2 -
                5, // Sesuaikan nilai ini
            child: Lottie.asset(
              'assets/img/loading2.json',
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
