import 'package:flutter/material.dart';
import 'package:redis_app/screens/about_app_screen.dart';
import 'package:redis_app/screens/dataVisualization.dart';
import 'package:redis_app/screens/geographic_page.dart';
import 'package:redis_app/screens/piechart_page.dart';
import './screens/about_data_page.dart';
import 'widgets/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Assignment',
      home: HomePage(),
      routes: {
        AboutDataPage.pageName: (ctx) => AboutDataPage(),
        DataVisualizationPage.pageName: (ctx) => DataVisualizationPage(),
        PieChartPage.pageName: (ctx) => PieChartPage(),
        AboutAppScreen.pageName: (ctx) => AboutAppScreen(),
        GeographicBarChart.pageName: (ctx) => GeographicBarChart(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Assigment'),
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
      body: Center(
        child: Text(
          'CEN414 APP \nDEVELOPMENT PROJECT',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
