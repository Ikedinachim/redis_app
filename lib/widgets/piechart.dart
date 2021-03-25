import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:redis_app/data.dart';

class MyPieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: Data.pieChartDataMap,
      animationDuration: Duration(milliseconds: 800),
      chartLegendSpacing: 32,
      chartRadius: MediaQuery.of(context).size.width / 2.2,
      colorList: [
        Colors.blue,
        Colors.blue.shade700,
        Colors.yellow,
        Colors.red,
        Colors.grey
      ],
      initialAngleInDegree: 0,
      chartType: ChartType.disc,
      ringStrokeWidth: 32,
      centerText: "HYBRID",
      legendOptions: LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.right,
        showLegends: true,
        legendShape: BoxShape.circle,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: true,
        showChartValuesInPercentage: false,
        showChartValuesOutside: false,
      ),
    );
  }
}
