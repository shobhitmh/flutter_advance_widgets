import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_fancy_widgets_ui/widgets/homepage.dart';
import 'package:flutter_fancy_widgets_ui/widgets/liquidpullrefresh.dart';
import 'package:flutter_fancy_widgets_ui/widgets/percenyindicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class pageindi extends StatefulWidget {
  pageindi({super.key});

  @override
  State<pageindi> createState() => _pageindiState();
}

class _pageindiState extends State<pageindi> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: Stack(children: [
        PageView(
          controller: _controller,
          children: [
            Container(child: perdentindi()),
            Container(child: homepahe()),
            Container(child: lpull()),
          ],
        ),
        Positioned(
            bottom: 10,
            child: Container(
                padding: EdgeInsets.only(left: 159),
                child: SmoothPageIndicator(
                    effect: ExpandingDotsEffect(
                        dotColor: Colors.red,
                        dotHeight: 20,
                        dotWidth: 20,
                        activeDotColor: Colors.deepPurple),
                    controller: _controller,
                    count: 3)))
      ]),
    );
  }
}
