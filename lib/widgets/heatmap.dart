import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class heatmap extends StatefulWidget {
  const heatmap({super.key});

  @override
  State<heatmap> createState() => _heatmapState();
}

class _heatmapState extends State<heatmap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[200],
          title: Text(
            'My HeatMap',
          ),
        ),
        body: Center(
          child: HeatMap(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            size: 40,
            showColorTip: true,
            textColor: Colors.black,
            fontSize: 20,
            startDate: DateTime(2024, 1, 1),
            endDate: DateTime(2024, 12, 31),
            datasets: {
              DateTime(2024, 1, 6): 10,
              DateTime(2024, 1, 7): 7,
              DateTime(2024, 1, 8): 10,
              DateTime(2024, 1, 9): 13,
              DateTime(2024, 1, 13): 6,
            },
            colorMode: ColorMode.opacity,
            showText: true,
            scrollable: true,
            colorsets: {
              1: Colors.green,
              3: Colors.orange,
              5: Colors.yellow,
              7: Colors.green,
              9: Colors.blue,
              11: Colors.indigo,
              13: Colors.purple,
            },
            onClick: (value) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(value.toString())));
            },
          ),
        ));
  }
}
