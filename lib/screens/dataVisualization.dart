import 'package:flutter/material.dart';
import 'package:redis_app/widgets/state_bar_chart.dart';
import 'package:redis_app/widgets/visualization_drawer.dart';

import '../data.dart';

class DataVisualizationPage extends StatelessWidget {
  static final String pageName = 'visualization Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: VisualizationDrawer(),
      appBar: AppBar(
        title: Text('Bar Chart visualization'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Water scarcity in Nigeria Barchart',
            style: TextStyle(fontSize: 30),
          ),
          if (MediaQuery.of(context).orientation == Orientation.landscape)
            StateBarChart(0.79),
          StateBarChart(0.6),
        ],
      ),
    );
  }
}
