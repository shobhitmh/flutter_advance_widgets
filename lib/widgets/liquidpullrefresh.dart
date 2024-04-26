import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class lpull extends StatelessWidget {
  const lpull({super.key});
  Future<void> _handlerefresh() async {
    return await Future.delayed(Duration(milliseconds: 5));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: SafeArea(
          child: LiquidPullToRefresh(
            animSpeedFactor: 4,
            showChildOpacityTransition: false,
            height: 200,
            color: Colors.deepPurple,
            onRefresh: _handlerefresh,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 200,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 200,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 200,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
