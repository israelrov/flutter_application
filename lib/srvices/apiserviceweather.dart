import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_application_1/models/modelweather.dart';
import 'package:retrofit/retrofit.dart';

part 'apiserviceweather.g.dart';



@RestApi(baseUrl: 'https://open-weather13.p.rapidapi.com/city/')
abstract class RapidApiService2 {
  factory RapidApiService2(Dio dio2, {String baseUrl}) = _RapidApiService2;

  static RapidApiService2 getapi2() => RapidApiService2(Dio());

  @GET("{city}")
  @Headers({
    "X-RapidAPI-Key": "19b2913d9fmsh6c84a1dc0f785b3p12040cjsn2b9bda540b30",
    "X-RapidAPI-Host": "open-weather13.p.rapidapi.com",
  })
  Future<WeatherModel> getweather(@Path("city") String city);
}
