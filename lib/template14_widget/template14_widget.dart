/*
*  template14_widget.dart
*  Flutter Form Template
*
*  Created by DavePope.
*  Copyright © 2018 DavePopeDesigns. All rights reserved.
    */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_template/values/values.dart';

class Template14Widget extends StatelessWidget {
  void onControlsButtonsLightShapeCustomPressed(BuildContext context) {}

  void onItemPressed(BuildContext context) => Navigator.pop(context);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          "Complete",
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
            "Country",
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
      child: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(left: 16, top: 120, right: 16),
              child: Text(
                "Thanks Dave! Your account is ready to setup.",
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
            Spacer(),
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 34),
              child: FlatButton(
                onPressed: () =>
                    this.onControlsButtonsLightShapeCustomPressed(context),
                color: AppColors.primaryElement,
                shape: RoundedRectangleBorder(
                  borderRadius: Radii.k8pxRadius,
                ),
                textColor: Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.all(0),
                child: Text(
                  "Done",
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
