import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:percent_indicator/percent_indicator.dart';

class perdentindi extends StatelessWidget {
  const perdentindi({super.key});
  Future<void> _handlerefresh() async {
    return await Future.delayed(Duration(milliseconds: 1000));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: SafeArea(
        child: LiquidPullToRefresh(
          animSpeedFactor: 2,
          showChildOpacityTransition: false,
          height: 200,
          color: Colors.deepPurple,
          onRefresh: _handlerefresh,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: CircularPercentIndicator(
                  animationDuration: 2000,
                  circularStrokeCap: CircularStrokeCap.round,
                  radius: 100,
                  lineWidth: 20,
                  percent: 0.7,
                  animation: true,
                  center: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        size: 60,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.0),
                        child: Text(
                          '70%',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                  progressColor: Colors.deepPurple[300],
                  backgroundColor: Colors.white,
                ),
              ),
              LinearPercentIndicator(
                lineHeight: 15,
                backgroundColor: Colors.white,
                percent: 0.6,
                center: Text('60%'),
                animation: true,
                animationDuration: 2000,
                barRadius: Radius.circular(10),
                progressColor: Colors.deepPurple[300],
              )
            ],
          ),
        ),
      ),
    );
  }
}
