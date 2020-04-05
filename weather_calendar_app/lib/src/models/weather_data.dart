import 'package:faker/faker.dart';

class WeatherData {
  WeatherData(this.hour) {
    humidity = faker.randomGenerator.integer(80, min: 10);
    precipitation = faker.randomGenerator.integer(100);
    sentence = faker.lorem.sentence();
    wind = faker.randomGenerator.integer(60);
  }

  final num hour;

  num humidity;
  num precipitation;
  String sentence;
  num wind;
}
