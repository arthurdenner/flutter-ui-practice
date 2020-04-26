import 'package:portfolio/src/models/project.dart';

const projects = [
  Project(
    image: 'assets/img/art_1.jpg',
    title: 'Under the sea world',
    location: 'Los Angeles',
    numPhotos: 14,
  ),
  Project(
    image: 'assets/img/art_2.jpg',
    title: 'Inspiration flow',
    location: 'Las Vegas',
    numPhotos: 8,
  ),
  Project(
    image: 'assets/img/art_3.jpg',
    title: 'Under the sea world',
    location: 'Los Angeles',
    numPhotos: 14,
  ),
  Project(
    image: 'assets/img/art_4.jpg',
    title: 'Inspiration flow',
    location: 'Las Vegas',
    numPhotos: 8,
  ),
  Project(
    image: 'assets/img/art_5.png',
    title: 'Under the sea world',
    location: 'Los Angeles',
    numPhotos: 14,
  ),
];

class AppDurations {
  static const short = Duration(milliseconds: 500);
  static const long = Duration(milliseconds: 2000);
  static const veryLong = Duration(milliseconds: 3000);
}
