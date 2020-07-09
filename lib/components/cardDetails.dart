import 'package:flutter/material.dart';
import 'package:wallet_app/config/colors.dart';
import 'package:wallet_app/config/size.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: width / 20, vertical: height / 20),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: width / 1.8,
              child: Image.asset(
                'images/card_dark.png',
                fit: BoxFit.fill,
              ),
            ),
          ),

          // FOR THE CHIP
          Align(
            alignment: Alignment.bottomRight,
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomRight,
                  width: width / 6,
                  height: height / 16,
                  decoration: BoxDecoration(
                    boxShadow: AppColors.neumorpShadow,
                    color: AppColors.primaryWhite,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left:5),
                  alignment: Alignment.center,
                  width: width / 6,
                  height: height / 16,
                  child: Image.asset('images/chip_card.png'),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: height / 10,
              width: width / 1.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        '**** **** ****',
                        style: TextStyle(
                            fontSize: fontSize(20),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' 1951',
                        style: TextStyle(
                            fontSize: fontSize(30),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    'PLATINUM CARD',
                    style: TextStyle(
                        fontSize: fontSize(15), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
