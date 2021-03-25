import 'package:flutter/material.dart';
import 'package:redis_app/screens/about_data_page.dart';
import 'package:redis_app/screens/dataVisualization.dart';
import 'package:redis_app/screens/geographic_page.dart';
import 'package:redis_app/screens/piechart_page.dart';

class VisualizationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Infographics'),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          Divider(),
          ListTile(
            title: Text('State Chart'),
            leading: Icon(Icons.bar_chart),
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(DataVisualizationPage.pageName),
          ),
          Divider(),
          ListTile(
            title: Text('Pie Chart'),
            leading: Icon(Icons.pie_chart),
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(PieChartPage.pageName),
          ),
          Divider(),
          ListTile(
              title: Text('Geopolitical zones'),
              leading: Icon(Icons.pie_chart_sharp),
              onTap: () => Navigator.of(context)
                  .pushReplacementNamed(GeographicBarChart.pageName)),
          Divider(),
        ],
      ),
    );
  }
}
