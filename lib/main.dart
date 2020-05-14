/*
*  main.dart
*  Flutter Form Template
*
*  Created by DavePope.
*  Copyright © 2018 DavePopeDesigns. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:flutter_form_template/template10_widget/template10_widget.dart';

void main() => runApp(App());


class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home: Template10Widget(),
    );
  }
}