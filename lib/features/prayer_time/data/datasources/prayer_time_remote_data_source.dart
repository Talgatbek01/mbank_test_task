import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:injectable/injectable.dart';

import '../models/prayer_time_model.dart';

abstract class PrayerTimeRemoteDataSource {
  Future<List<PrayerTimeModel>> getPrayerTimes();
}

@LazySingleton(as: PrayerTimeRemoteDataSource)
class PrayerTimeRemoteDataSourceImpl implements PrayerTimeRemoteDataSource {
  @override
  Future<List<PrayerTimeModel>> getPrayerTimes() async {
    await Future.delayed(const Duration(seconds: 1));
    final response = await rootBundle.loadString('assets/prayer_times.json');
    final data = json.decode(response) as List<dynamic>;
    return data.map((json) => PrayerTimeModel.fromJson(json)).toList();
  }
}
