import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_finance/size_config.dart';
import 'package:mobile_finance/theme.dart';
import 'package:mobile_finance/ui/widgets/custom_button.dart';

class OnboardWidget extends StatelessWidget {
  final String text;
  final String imageUrl;

  const OnboardWidget({
    Key? key,
    required this.text,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: getProportionateScreenHeight(50),
            ),
            height: getProportionateScreenHeight(250),
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_search.png'),
              ),
            ),
          ),
          SizedBox(
            height: 90,
          ),
          Text(
            'Jelajahi',
            style: blueTextStyle.copyWith(
              fontWeight: bold,
              fontSize: getProportionateScreenHeight(20),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Text(
            'Cari, temukan, dan beli produk favorit mu',
            style: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: getProportionateScreenHeight(14),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
