/*
*  template10_widget.dart
*  Flutter Form Template
*
*  Created by DavePope.
*  Copyright © 2018 DavePopeDesigns. All rights reserved.
    */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_template/template11_widget/template11_widget.dart';
import 'package:flutter_form_template/values/values.dart';

class Template10Widget extends StatelessWidget {
  void onControlsButtonsLightShapeCustomPressed(BuildContext context) =>
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Template11Widget()));

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Material(
                child: Container(
                  margin: EdgeInsets.only(left: 16, top: 120),
                  child: Text(
                    "Enter your name",
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
            ),
            Container(
              height: 44,
              margin: EdgeInsets.only(left: 16, top: 24, right: 16),
              decoration: BoxDecoration(
                color: AppColors.accentElement,
              ),
              child: CupertinoTextField(
                autofocus: true,
                clearButtonMode: OverlayVisibilityMode.editing,
                textInputAction: TextInputAction.next,
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 16, top: 188, right: 16),
              child: CupertinoButton(
                onPressed: () =>
                    this.onControlsButtonsLightShapeCustomPressed(context),
                color: AppColors.primaryElement,
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
