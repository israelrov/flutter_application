import 'package:dio/dio.dart' hide Headers;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/modelvisit.dart';
import 'package:retrofit/retrofit.dart';
part 'apiservice.g.dart';

@RestApi(baseUrl: 'https://ai-trip-planner.p.rapidapi.com/')
abstract class RapidApiService {
  factory RapidApiService(Dio dio, {String baseUrl}) = _RapidApiService;

  static RapidApiService getapi() => RapidApiService(Dio());

  @GET('')
  @Headers({
    "X-RapidAPI-Key": "19b2913d9fmsh6c84a1dc0f785b3p12040cjsn2b9bda540b30",
    "X-RapidAPI-Host": "ai-trip-planner.p.rapidapi.com",
  })
  Future<TripPlan> fetchDataFromRapidAPI(
    @Query('days') String days,
    @Query('destination') String destination,
  );
}

