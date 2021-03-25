import 'package:flutter/material.dart';
import 'package:redis_app/screens/about_app_screen.dart';
import 'package:redis_app/screens/about_data_page.dart';
import 'package:redis_app/screens/dataVisualization.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Menu'),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            title: Text('About Data'),
            leading: Icon(Icons.dashboard),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(AboutDataPage.pageName);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Data Visualization'),
            leading: Icon(Icons.remove_red_eye),
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(DataVisualizationPage.pageName),
          ),
          Divider(),
          ListTile(
            title: Text('About App'),
            leading: Icon(Icons.android),
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(AboutAppScreen.pageName),
          ),
          Divider(),
        ],
      ),
    );
  }
}
