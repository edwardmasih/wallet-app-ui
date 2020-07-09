import 'package:flutter/material.dart';
import 'package:wallet_app/config/colors.dart';
import 'package:wallet_app/config/size.dart';
import 'package:wallet_app/components/cardDetails.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: width / 20),
          alignment: Alignment.centerLeft,
          child: Text(
            'Card Selected',
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize(20)),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  width: SizeConfig.getWidth(context) * 0.9,
                  margin: EdgeInsets.symmetric(
                      horizontal: width / 25, vertical: height / 30),
                  decoration: BoxDecoration(
                    color: AppColors.primaryWhite,
                    boxShadow: AppColors.neumorpShadow,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        left: 0,
                        top: 150,
                        bottom: -200,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: AppColors.InsideCardShadow,
                            color: Colors.white30,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        left: -300,
                        top: -100,
                        bottom: -100,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: AppColors.InsideCardShadow,
                            color: Colors.white30,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      CardDetails(),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
