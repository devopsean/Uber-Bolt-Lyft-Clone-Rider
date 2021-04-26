import 'package:cab_rider/brand_colors.dart';
import 'package:flutter/material.dart';

class TaxiButton extends StatelessWidget {
TaxiButton({this.title, this.color, this. onPressed});
final String title;
final Color color;
final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      color: color,
      textColor: Colors.white,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(25),
      ),
      child: Container(
        height: 50,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Brand-Bold',
            ),
          ),
        ),
      ),
    );
  }
}
