import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_finance/theme.dart';
import 'package:mobile_finance/ui/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 50,
                left: defaultMargin,
              ),
              child: Text(
                'Login Mudah \nDengan No Handphone',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 80),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '0851..',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: CustomButton(
                title: 'Masuk Sekarang',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
