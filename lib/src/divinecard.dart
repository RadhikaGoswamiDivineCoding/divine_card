library divinecard;


import 'package:flutter/material.dart';

// ignore: camel_case_types
class divineCard extends StatelessWidget {
  divineCard(
      {@required this.height,
        @required this.color,
        this.blurRadius,
        this.buttonColor,
        this.buttonText,
        this.subtitle,
        this.title,
        this.iconColor,
        this.fontColor,
        this.fontSize,
        this.icon,

        this.imgHeight,
        this.imgWidth,
        this.buttonBackground,
        this.shadowColor,
        @required this.img});
  final double height;
  final Color color;
  final Color shadowColor;
  final String title;
  final String subtitle;
  final double imgHeight;
  final double imgWidth;
  final double fontSize;
  final Color fontColor;
  final Color iconColor;
  final Color buttonColor;
  final double blurRadius;
  final String buttonText;
  final Color buttonBackground;
  final IconData icon;
  final ImageProvider img;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: height,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: color,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color:shadowColor,
                    offset: Offset(0.0, 10.0),
                    blurRadius: blurRadius)
              ]),
        ),
        Container(
          alignment: FractionalOffset.centerRight,
          child: Image(
            image: img,
            height: imgHeight,
            width: imgWidth,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    color: fontColor,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                subtitle,
                style: TextStyle(
                    color: fontColor,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                height: 40.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: buttonBackground,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        buttonText,
                        style: TextStyle(
                          color: buttonColor,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(
                        icon,
                      )
                    ],
                  ),
                ),),
            ],
          ),
        ),
      ],
    );
  }
}
