import 'package:flutter/material.dart';
import 'package:redis_app/widgets/drawer.dart';

class AboutAppScreen extends StatelessWidget {
  static final String pageName = '/aboutAppPageName';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/me.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Created By Ikedinachim Collins'),
            Text('Matriculation number: 17CJ022548'),
          ],
        ),
      ),
    );
  }
}
