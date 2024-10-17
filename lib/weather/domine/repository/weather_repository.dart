import 'package:clean_weather/weather/domine/entity/weather_entity.dart';

abstract class WeatherRepository {
Future<WeatherEntity > getWeatherData(String cityName) ;
}