import 'dart:convert';

import 'package:clean_weather/core/constant.dart';
import 'package:clean_weather/weather/data/model/weather_model.dart';
import 'package:dio/dio.dart';

abstract class RemoteDataSource {
  Future<WeatherModel?> getData(String cityName);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  @override
  Future<WeatherModel?> getData(String cityName) async {
    try {
      final response = await Dio().get(
          '${RemoteConstant.baseUrl}/weather?q=$cityName&appid=${RemoteConstant.apiKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
