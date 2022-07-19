import 'package:flutter/material.dart';

class DateCard extends StatelessWidget {
  final String title;
  final String hour;
  const DateCard({Key? key, required this.title, required this.hour})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 65,
          height: 65,
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(color: Color(0xff74d473), width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 17.0),
              child: Text(title,
                  style:
                      const TextStyle(color: Color(0xff74d473), fontSize: 23),
                  textAlign: TextAlign.center),
            ),
          ),
        ),
        Text(
          hour,
          style: const TextStyle(fontSize: 17),
        ),
      ],
    );
  }
}
