import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../data.dart';

class AboutDataPage extends StatelessWidget {
  static final String pageName = 'AboutDataPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Availabity of water per state in Nigeria'),
      ),
      body: ListView.builder(
          itemCount: Data.statistics.length,
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text(Data.statistics[index].stateName),
                    trailing: CircleAvatar(
                      child: Text('${Data.statistics[index].score}%'),
                    ),
                  ),
                  Divider(),
                ],
              ),
            );
          }),
    );
  }
}
