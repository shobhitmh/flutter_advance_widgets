import 'package:flutter/material.dart';
import 'package:flutter_fancy_widgets_ui/widgets/avatarglow.dart';
import 'package:flutter_fancy_widgets_ui/widgets/homepage.dart';
import 'package:flutter_fancy_widgets_ui/widgets/liquidpullrefresh.dart';
import 'package:flutter_fancy_widgets_ui/widgets/percenyindicator.dart';

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
        '/lpull': (context) => const lpull(),
        '/percentindi': (context) => const perdentindi(),
      },
      debugShowCheckedModeBanner: false,
      title: 'fancy flutter widgets UI Learning',
      theme: ThemeData(),
      home: homepahe(),
    );
  }
}
