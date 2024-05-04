import 'package:flutter/material.dart';
import 'package:flutter_fancy_widgets_ui/widgets/avatarglow.dart';
import 'package:flutter_fancy_widgets_ui/widgets/cubeswipe.dart';
import 'package:flutter_fancy_widgets_ui/widgets/eatmapcalender.dart';
import 'package:flutter_fancy_widgets_ui/widgets/heatmap.dart';
import 'package:flutter_fancy_widgets_ui/widgets/homepage.dart';
import 'package:flutter_fancy_widgets_ui/widgets/liquidpullrefresh.dart';
import 'package:flutter_fancy_widgets_ui/widgets/pageindicator.dart';
import 'package:flutter_fancy_widgets_ui/widgets/percenyindicator.dart';
import 'package:flutter_fancy_widgets_ui/widgets/slidable_widget.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/avatarglow': (context) => const avatarglowwidget(),
        '/lpull': (context) => lpull(),
        '/percentindi': (context) => perdentindi(),
        '/cubeswipe': (context) => cubeswipe(),
        '/pageindi': (context) => pageindi(),
        '/Myslidedwid': (context) => Myslidedwid(),
        '/heatmap': (context) => heatmap(),
        '/heatmapcalender': (context) => calender(),
      },
      debugShowCheckedModeBanner: false,
      title: 'fancy flutter widgets UI Learning',
      theme: ThemeData(),
      home: homepahe(),
    );
  }
}
