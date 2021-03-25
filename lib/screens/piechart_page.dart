import 'package:flutter/material.dart';
import 'package:redis_app/widgets/piechart.dart';
import 'package:redis_app/widgets/visualization_drawer.dart';

class PieChartPage extends StatelessWidget {
  static final String pageName = 'piechart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: VisualizationDrawer(),
      appBar: AppBar(
        title: Text('Piechart Representation'),
      ),
      body: Center(
        child: MyPieChart(),
      ),
    );
  }
}
