import 'package:clean_weather/weather/data/data_source/remote_dat_source.dart';
import 'package:clean_weather/weather/data/repository/repository_impl.dart';
import 'package:clean_weather/weather/domine/repository/weather_repository.dart';
import 'package:clean_weather/weather/domine/usecase/get_weather_data_usecase.dart';
import 'package:flutter/material.dart';

void main() async {
  RemoteDataSource remoteDataSource = RemoteDataSourceImpl();
  WeatherRepository weatherRepository = RepositoryImpl(remoteDataSource);
  GetWeatherDataCityNameUseCase(weatherRepository).getData("cairo");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
          ),
        ));
  }
}
