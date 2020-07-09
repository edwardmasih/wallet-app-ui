import 'package:flutter/material.dart';
import 'package:wallet_app/components/arrowButton.dart';
import 'package:wallet_app/config/colors.dart';
import 'package:wallet_app/config/size.dart';
import 'package:wallet_app/config/strings.dart';
import 'package:wallet_app/components/piechart/pieChart.dart';

class ExpenseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: height / 14,
          padding: EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Monthly Expenses',
                  style: TextStyle(
                      fontSize: fontSize(20), fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: width / 3.5,
                margin: EdgeInsets.only(right: width / 30),
                child: Row(
                  children: <Widget>[
                    ArrowButton(
                      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: fontSize(17),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: width / 50)),
                    ArrowButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: fontSize(17),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: expenses
                        .map((value) => Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: AppColors
                                        .pieColors[expenses.indexOf(value)],
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    value['name'],
                                    style: TextStyle(fontSize: fontSize(16)),
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: PieChart(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
