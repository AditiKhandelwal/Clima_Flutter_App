import 'package:flutter/cupertino.dart';
import 'package:clima/utilities/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../services/networking.dart';
import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';

const apiKey = 'cc97b62cce84bb01e95286236d95c47c';

const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  double latitude;
  double longitude;

  Future<dynamic> getCityWeather(String city) async {
    NetworkHelper network = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric');
    var weatherData = await network.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;

    NetworkHelper network = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric');

    var weatherData = await network.getData();
    return weatherData;
  }

  IconData getWeatherIcon(int condition) {
    if (condition < 300) {
      return FontAwesomeIcons.cloudSunRain;
    } else if (condition < 400) {
      return FontAwesomeIcons.cloudRain;
    } else if (condition < 600) {
      return FontAwesomeIcons.umbrella;
    } else if (condition < 700) {
      return FontAwesomeIcons.snowman;
    } else if (condition < 800) {
      return FontAwesomeIcons.wind;
    } else if (condition == 800) {
      return Icons.wb_sunny;
    } else if (condition <= 804) {
      return Icons.cloud;
    } else {
      return Icons.wb_sunny;
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  Gradient getBackground(int condition) {
    if (condition < 300) {
      return kSunny;
    } else if (condition < 400) {
      return kRainy;
    } else if (condition < 600) {
      return kRainy;
    } else if (condition < 700) {
      return kCloudy;
    } else if (condition < 800) {
      return kCloudy;
    } else if (condition == 800) {
      return kSunny;
    } else if (condition <= 804) {
      return kCloudy;
    } else {
      return kSunny;
    }
  }
}
