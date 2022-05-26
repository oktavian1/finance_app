import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_finance/size_config.dart';
import 'package:mobile_finance/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/get-started');
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: getProportionateScreenWidth(100),
              height: getProportionateScreenHeight(100),
              margin: const EdgeInsets.only(bottom: 50),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_plane.png'),
                ),
              ),
            ),
            Text(
              'MULTIFINANCE',
              style: whiteTextStyle.copyWith(
                fontSize: getProportionateScreenWidth(32),
                fontWeight: medium,
                letterSpacing: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
