import 'package:clean_weather/weather/domine/entity/weather_entity.dart';
import 'package:clean_weather/weather/domine/repository/weather_repository.dart';

class GetWeatherDataCityNameUseCase {
  final WeatherRepository _weatherRepository;

  GetWeatherDataCityNameUseCase(this._weatherRepository);

  Future<WeatherEntity> getData(String cityName) async =>
     await _weatherRepository.getWeatherData(cityName);
}
