import 'package:flutter/material.dart';
import 'package:wallet_app/config/colors.dart';
import 'package:wallet_app/widgets/cardSection.dart';
import 'package:wallet_app/widgets/expenseSection.dart';
import 'package:wallet_app/components/header.dart';


import 'config/size.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);

    return Scaffold(
      body: Container(
        color: AppColors.primaryWhite,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: height/8,
                child: WalletHeader(),
              ),
              Expanded(child: CardSection()),
              Expanded(child: ExpenseSection()),
            ],
          ),
        ),
      ),
    );
  }
}
