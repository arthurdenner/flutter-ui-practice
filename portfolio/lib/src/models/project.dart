import 'package:flutter/foundation.dart';

class Project {
  final String image;
  final String title;
  final String location;
  final int numPhotos;

  const Project({
    @required this.image,
    @required this.title,
    @required this.location,
    @required this.numPhotos,
  });
}
