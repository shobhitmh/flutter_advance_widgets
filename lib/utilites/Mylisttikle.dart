import 'package:flutter/material.dart';
import 'package:flutter_fancy_widgets_ui/utilites/data.dart';

class Mylisttile extends StatelessWidget {
  const Mylisttile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: names.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            names[index],
          ),
          tileColor: Colors.blue,
        );
      },
    );
  }
}
