import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    //http://api.weatherapi.com/v1/current.json?key=ade3c68b18c04fb0a60210137230901 &q=wien&aqi=no
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=ade3c68b18c04fb0a60210137230901 &q=$city&aqi=no');

    return response.data;
  }
}
