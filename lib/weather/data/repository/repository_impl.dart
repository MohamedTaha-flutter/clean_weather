import 'package:clean_weather/weather/domine/entity/weather_entity.dart';
import 'package:clean_weather/weather/domine/repository/weather_repository.dart';

import '../data_source/remote_dat_source.dart';

class RepositoryImpl implements WeatherRepository {
  final RemoteDataSource _remoteDataSource;

  RepositoryImpl(this._remoteDataSource);

  @override
  Future<WeatherEntity> getWeatherData(String cityName) async {
    return (await _remoteDataSource.getData(cityName))!;
  }
}
