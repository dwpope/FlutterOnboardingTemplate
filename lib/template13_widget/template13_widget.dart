/*
*  template13_widget.dart
*  Flutter Form Template
*
*  Created by DavePope.
*  Copyright © 2018 DavePopeDesigns. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:flutter_form_template/template14_widget/template14_widget.dart';
import 'package:flutter_form_template/values/values.dart';


class Template13Widget extends StatelessWidget {
  
  void onControlsButtonsLightShapeCustomCopyPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => Template14Widget()));
  
  void onItemPressed(BuildContext context) => Navigator.pop(context);
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Country",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        leading: FlatButton(
          onPressed: () => this.onItemPressed(context),
          textColor: Color.fromARGB(255, 0, 0, 0),
          child: Text(
            "Number",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 225, 225, 225),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: 16, top: 120),
                child: Text(
                  "Choose your country",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontFamily: "SF Pro Display",
                    fontWeight: FontWeight.w400,
                    fontSize: 28,
                    letterSpacing: 0.364,
                    height: 1.21429,
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 16, top: 301, right: 16),
              child: FlatButton(
                onPressed: () => this.onControlsButtonsLightShapeCustomCopyPressed(context),
                color: AppColors.primaryElement,
                shape: RoundedRectangleBorder(
                  borderRadius: Radii.k8pxRadius,
                ),
                textColor: Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.all(0),
                child: Text(
                  "Next",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: "SF Pro Text",
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}