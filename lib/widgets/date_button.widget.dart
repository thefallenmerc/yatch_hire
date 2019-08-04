import 'package:flutter/material.dart';

class CustomDateButton extends StatelessWidget {
  final String month;
  final int date;
  final bool active;
  CustomDateButton(this.month, this.date, [this.active = false]);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: this.active
          ? EdgeInsets.only(right: 10.0)
          : EdgeInsets.only(right: 10.0, top: 5.0),
      padding: this.active
          ? EdgeInsets.all(30.0)
          : EdgeInsets.symmetric(horizontal: 30.0, vertical: 25.0),
      decoration: BoxDecoration(
          color:
              this.active ? Theme.of(context).primaryColor : Color(0xFFF3FAFA),
          borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          Text(this.month.toUpperCase(),
              style: TextStyle(
                  color: this.active
                      ? Colors.white70
                      : Theme.of(context).primaryColor,
                  fontSize: 16.0)),
          Text(
            this.date.toString(),
            style: TextStyle(
                color: this.active
                    ? Colors.white70
                    : Theme.of(context).primaryColor,
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
