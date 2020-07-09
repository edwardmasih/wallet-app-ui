import 'package:flutter/material.dart';
import 'package:wallet_app/config/colors.dart';
import 'package:wallet_app/config/size.dart';

class WalletHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var width = SizeConfig.getWidth(context);


    return Container(
      margin: EdgeInsets.symmetric(horizontal: width/20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'My Wallet',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Container(
            height: width/6,
            width: width/6,
            decoration: BoxDecoration(
              color: AppColors.primaryWhite,
              boxShadow: AppColors.neumorpShadow,
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    margin:  EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      boxShadow: AppColors.neumorpShadow,
                      color: Colors.deepOrange,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(11),
                    decoration: BoxDecoration(
                      boxShadow: AppColors.neumorpShadow,
                      color: AppColors.primaryWhite,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Center(child: Icon(Icons.notifications)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
