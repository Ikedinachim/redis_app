import 'package:flutter/material.dart';

import '../data.dart';

class StateBarChart extends StatelessWidget {
  final double factor;
  StateBarChart(this.factor);
  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.center,
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      height: MediaQuery.of(context).size.height * factor,
      child: ListView.builder(
          itemCount: Data.statistics.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            return Column(
              children: [
                Text(Data.statistics[index].score.toString() + '%'),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  //textDirection: TextDirection.rtl,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      width: 15,
                      height: 300,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      width: 15,
                      height: (Data.statistics[index].score * 3).toDouble(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                RotatedBox(
                  quarterTurns: -1,
                  child: Text(Data.statistics[index].stateName),
                )
              ],
            );
          }),
    );
  }
}
