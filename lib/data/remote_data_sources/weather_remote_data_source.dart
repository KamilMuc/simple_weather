import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    try {
      final response = await Dio().get<Map<String, dynamic>>(
          'http://api.weatherapi.com/v1/current.json?key=ade3c68b18c04fb0a60210137230901 &q=$city&aqi=no');

      return response.data;
    } on DioError catch (error) {
      throw Exception(
          error.response?.data['error']['message'] ?? 'Unknow Error');
    }
  }
}
