import 'package:flutter/material.dart';
import 'package:responsive/models/feed_model.dart';
//import 'package:responsive/models/app_localization.dart';
import 'package:responsive/models/feed_model.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedDetails extends StatelessWidget {
  final FeedModel feedModel;

  const FeedDetails({Key key, this.feedModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
       "Feed",
        ),
        actions: [
          FlatButton(
            color: Colors.green,
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  "Bookmarks",
                  style: TextStyle(color: Colors.black87),
                ),
                Icon(Icons.bookmark)
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              feedModel.headline,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              feedModel.date,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Image.network(
              feedModel.img,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
                "Get Upto date information related to agriculture from Government")
          ],
        ),
      ),
    );
  }
}