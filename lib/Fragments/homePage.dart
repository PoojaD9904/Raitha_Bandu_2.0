import 'package:flutter/material.dart';
import 'package:responsive/theme.dart';
import 'package:responsive/weather.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:responsive/models/feed_model.dart';
import 'package:responsive/feed/feed_details.dart';
import 'package:responsive/feed/feed_template.dart';
import 'package:responsive/pages/home_page.dart';

import 'package:url_launcher/url_launcher.dart';
import 'navigationDrawer.dart';


class homePage extends StatelessWidget {
  static const String routeName = "/a";

  @override
  Widget build(BuildContext context) {
    List<Widget> posts = [];
    return new Scaffold(
      appBar: AppBar(
        title: Text("Feed"),
        backgroundColor: MyColors.primaryColorLight,
              ),
    );


  }
}