import 'package:flutter/material.dart';
import 'package:redis_app/widgets/geographic_zones.dart';
import 'package:redis_app/widgets/visualization_drawer.dart';

class GeographicBarChart extends StatelessWidget {
  static final String pageName = 'geographic bar chart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: VisualizationDrawer(),
      appBar: AppBar(
        title: Text('Geopolitical zones'),
      ),
      body: Center(
        child: GeopoliticalBarChart(),
      ),
    );
  }
}
