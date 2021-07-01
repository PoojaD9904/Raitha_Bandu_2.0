class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;


  PlanetInfo(
      this.position, {
        this.name,
        this.iconImage,
        this.description,

      });
}

List<PlanetInfo> planets = [
PlanetInfo(1,
name: 'Weather Forecast',

iconImage:'assets/img/FAR.png',
description:
"Get Weather forecast by entering the location and  know about current day's  Temperature,humidity,etc ",
),
PlanetInfo(2,
name: 'Feed',
iconImage: 'assets/img/feed.png',
description:
" Get up to date feed related agriculture.New methodologies,technologies to be used ,new Government rules",
),
PlanetInfo(3,
name: 'Disease Prediction',
iconImage: 'assets/img/dis.png',
description:
"Get Possible Pest attack Prediction analysis at the earliest ,Click the image of the crop/leaf and check if has the possiblity to get a pest attack or not ",
),
];