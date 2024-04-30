import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fancy_widgets_ui/utilites/Mylisttikle.dart';
import 'package:flutter_fancy_widgets_ui/utilites/data.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class Myslidedwid extends StatefulWidget {
  const Myslidedwid({super.key});

  @override
  State<Myslidedwid> createState() => _MyslidedwidState();
}

class _MyslidedwidState extends State<Myslidedwid> {
  TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.message,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Messages",
                    style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 40)),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Icon(Icons.send),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.1,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: _search,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    size: 34,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return Slidable(
                      startActionPane: ActionPane(
                        motion: StretchMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (context) {},
                            backgroundColor: Colors.green,
                            icon: Icons.call,
                          ),
                          SlidableAction(
                            onPressed: (context) {},
                            backgroundColor: Colors.blue,
                            icon: Icons.message_rounded,
                          )
                        ],
                      ),
                      endActionPane: ActionPane(
                        motion: StretchMotion(),
                        children: [
                          SlidableAction(
                              onPressed: (context) {},
                              backgroundColor: Colors.red,
                              icon: Icons.delete)
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.person,
                            size: 35,
                          ),
                          title: Text(
                            names[index],
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(fontSize: 20),
                            ),
                          ),
                          subtitle: Text('+91 9171205081'),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
