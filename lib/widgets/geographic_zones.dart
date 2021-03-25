import 'package:flutter/material.dart';
import 'package:redis_app/data.dart';

class GeopoliticalBarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Data.zones.length,
          itemBuilder: (ctx, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(Data.zones[index].score.toString()),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  width: 50,
                  height: (Data.zones[index].score * 15).toDouble(),
                  color: index == 0 ? Colors.blue.shade900 : Colors.blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(Data.zones[index].region),
              ],
            );
          }),
    );
  }
}
