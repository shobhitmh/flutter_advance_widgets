import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class calender extends StatefulWidget {
  const calender({super.key});

  @override
  State<calender> createState() => _calenderState();
}

class _calenderState extends State<calender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[300],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Heatmap  Calender',
        ),
      ),
      body: Center(
        child: HeatMapCalendar(
          initDate: DateTime(2024, 1, 1),
          weekFontSize: 20,
          borderRadius: 20,
          colorTipSize: 15,
          colorTipHelper: [Text('Light'), Text('Darkl')],
          size: 10,
          margin: EdgeInsets.all(4),
          defaultColor: Colors.white,
          flexible: true,
          textColor: Colors.black,
          weekTextColor: Colors.white,
          colorMode: ColorMode.color,
          showColorTip: true,
          datasets: {
            DateTime(2024, 1, 6): 3,
            DateTime(2024, 1, 7): 7,
            DateTime(2024, 1, 8): 10,
            DateTime(2024, 1, 9): 13,
            DateTime(2024, 2, 13): 6,
            DateTime(2024, 2, 13): 6,
            DateTime(2024, 3, 13): 10,
            DateTime(2024, 3, 13): 14,
          },
          colorsets: const {
            1: Colors.red,
            3: Colors.orange,
            5: Colors.yellow,
            7: Colors.green,
            9: Colors.blue,
            11: Colors.indigo,
            13: Colors.purple,
            14: Colors.indigoAccent,
          },
          onClick: (value) {
            _showMydialog(context, Key(value.toString()));
          },
        ),
      ),
    );
  }
}

Future<void> _showMydialog(BuildContext context, value) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'Date',
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: [Text('$value')],
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('CLose')),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Agree'))
        ],
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      );
    },
  );
}
