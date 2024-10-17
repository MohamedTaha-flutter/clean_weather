import 'package:clean_weather/weather/domine/entity/weather_entity.dart';

class WeatherModel extends WeatherEntity {
  WeatherModel({
    required super.id,
    required super.description,
    required super.name,
    required super.temp,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      id: json["weather"][0]["id"],
      description: json["weather"][0]["description"],
      name: json["name"],
      temp: json["main"]["temp"],
    );
  }
}
