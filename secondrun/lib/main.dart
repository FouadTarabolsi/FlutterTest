// Copyrigth 2019 The Flutter team. All rights reserver.const
// Use of this source code is governed by BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Welcome to Flutter",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Welcome TO Flutter",),
          ),
          body: Center(
            child: Text("Hello World"),
            
          ),
          
        ));
  }
}
