import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/domain/core/api_end_point/api_end_points.dart';
import 'package:weather_app/domain/core/failures/main_failures.dart';
import 'package:weather_app/domain/models/weather_app/weather_model.dart';
import 'package:weather_app/domain/repo/i_search_repo.dart';

@LazySingleton(as: ISearchRepository)
class SearchRepository implements ISearchRepository {
  @override
  Future<Either<MainFailures, SearchResultModel>> searchResults(
      {required String searchLocation}) async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoint.searchUrl + searchLocation);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.data.toString());

        final result = SearchResultModel.fromJson(response.data);
        log(result.toString());
        return Right(result);
      } else {
        return const Left(MainFailures.clientFailures());
      }
    } on DioException catch (e) {
      log(e.toString());
      return const Left(MainFailures.clientFailures());
    } catch (e) {
      log(e.toString());
      return const Left(MainFailures.serverFailures());
    }
  }

  @override
  Future<Either<MainFailures, SearchResultModel>> bengaluruDetails() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoint.bangaloreWeatherUrl);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResultModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const MainFailures.clientFailures());
      }
    } catch (e) {
      return left(const MainFailures.serverFailures());
    }
  }

  @override
  Future<Either<MainFailures, SearchResultModel>> kollamDetails() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoint.kollamWeatherUrl);
      if (response.statusCode == 200 || response.data == 201) {
        final result = SearchResultModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const MainFailures.clientFailures());
      }
    } catch (e) {
      return left(const MainFailures.serverFailures());
    }
  }

  @override
  Future<Either<MainFailures, SearchResultModel>> mavelikaraDetails() {
    // TODO: implement mavelikaraDetails
    throw UnimplementedError();
  }
}
