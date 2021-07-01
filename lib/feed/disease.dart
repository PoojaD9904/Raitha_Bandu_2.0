import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:responsive/theme.dart';
import 'package:video_player/video_player.dart';

class Disease extends StatelessWidget {
  const Disease({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: new AppBar(
       title: Text('Plant Disease Prediction'),
       backgroundColor: MyColors.primaryColorLight,
     ),
    );
  }
}






