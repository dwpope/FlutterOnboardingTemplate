/*
*  template11_widget.dart
*  Flutter Form Template
*
*  Created by DavePope.
*  Copyright © 2018 DavePopeDesigns. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:flutter_form_template/template12_widget/template12_widget.dart';
import 'package:flutter_form_template/values/values.dart';


class Template11Widget extends StatelessWidget {
  
  void onControlsButtonsLightShapeCustomPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => Template12Widget()));
  
  void onItemPressed(BuildContext context) => Navigator.pop(context);
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Email",
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
            "Name",
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
                  "Enter your email",
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
              height: 44,
              margin: EdgeInsets.only(left: 16, top: 24, right: 16),
              decoration: BoxDecoration(
                color: AppColors.accentElement,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  contentPadding: EdgeInsets.all(0),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  color: Color.fromARGB(77, 60, 60, 67),
                  fontFamily: "SF Pro Text",
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
                maxLines: 1,
                autocorrect: false,
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 16, top: 233, right: 16),
              child: FlatButton(
                onPressed: () => this.onControlsButtonsLightShapeCustomPressed(context),
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