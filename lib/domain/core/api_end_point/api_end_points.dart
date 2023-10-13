import 'package:weather_app/domain/core/api/api.dart';
import 'package:weather_app/domain/core/const.dart';

class ApiEndPoint {
  static const searchUrl = "$baseUrl/forecast.json?key=$apiKey&q=";
  static const kollamWeatherUrl = "$baseUrl/forecast.json?key=$apiKey&q=kollam";
  static const bangaloreWeatherUrl =
      "$baseUrl/forecast.json?key=$apiKey&q=bangalore";
  static const mavelikaraWeatherUrl =
      "$baseUrl/forecast.json?key=$apiKey&q=mavelikara";
}

const sample =
    "http://api.weatherapi.com/v1/forecast.json?key=ec5fc0e6cac740f3b58120616232208&q=kollam";
