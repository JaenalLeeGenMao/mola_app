import 'package:flutter/material.dart';
// import 'package:mola_app/home/loader.dart';

class CustomButton extends StatefulWidget {
  final String title;
  final Color warna;
  CustomButton(this.title, this.warna);

  @override
  CustomButtonState createState(){
    return CustomButtonState();
  }
  
}

class CustomButtonState extends State<CustomButton> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: new RaisedButton(
          child: new Text(
            widget.title,
            style: TextStyle(
                fontSize: 13.0,
                color: Colors.white,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold),
          ),
          color: widget.warna,
          onPressed: () {
            setState(() {
              check = !check;
            });
          },
          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
        ),
      )
    );
  }
}
