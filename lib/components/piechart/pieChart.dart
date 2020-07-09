import 'package:flutter/material.dart';
import 'package:wallet_app/components/piechart/pieChartPainter.dart';
import 'package:wallet_app/config/colors.dart';
import 'package:wallet_app/config/size.dart';
import 'package:wallet_app/config/strings.dart';

class PieChart extends StatefulWidget {
  PieChart({Key key}) : super(key: key);

  @override
  _PieChartState createState() => _PieChartState();
}

class _PieChartState extends State<PieChart> {
  double total = 0;
  @override
  void initState() {
    super.initState();
    expenses.forEach((e) => total += e['amount']);
  }

  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return LayoutBuilder(
      builder: (context, constraint) {
        var pieChartPainter = PieChartPainter(
          width: constraint.maxWidth * 0.5,
          categories: expenses,
        );
        return Container(
          decoration: BoxDecoration(
            color: AppColors.primaryWhite,
            shape: BoxShape.circle,
            boxShadow: AppColors.neumorpShadow,
          ),
          child: Stack(
            children: <Widget>[
              Center(
                child: SizedBox(
                  width: constraint.maxWidth * 0.65,
                  child: CustomPaint(
                    child: Container(),
                    foregroundPainter: pieChartPainter,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: constraint.maxWidth * 0.5,
                  decoration: BoxDecoration(
                    color: AppColors.primaryWhite,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(2, 3),
                        color: Colors.black38,
                      )
                    ],
                  ),
                  child: Center(
                      child: Text(
                    "\$" + total.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize(22),
                    ),
                  )),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
