import 'package:flutter/material.dart';
import 'package:countup/countup.dart';
import 'package:bbm/model/data_performance.dart';
import '../../../constant.dart';

class Performance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: ListView.builder(
          itemCount: listDataPerformance.length,
          itemBuilder: (context, index) => PerformanceCard(
            performance: listDataPerformance[index],
          ),
        ),
      ),
    );
  }
}

class PerformanceCard extends StatelessWidget {
  final DataPerformance? performance;

  PerformanceCard({this.performance});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: 8),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: kSecondaryColor,
        boxShadow: [kDefaultShadow],
      ),
      child: Container(
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        child: (Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                performance.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
            Center(
                child: Countup(
              begin: 0,
              end: 10000000,
              duration: Duration(seconds: 1),
              separator: ',',
              style: TextStyle(
                fontSize: 36,
              ),
            ))
          ],
        )),
      ),
    );
  }
}
