import 'package:dartz/dartz.dart';
import 'package:weather_app/domain/core/failures/main_failures.dart';
import 'package:weather_app/domain/models/weather_app/weather_model.dart';

abstract class ISearchRepository {
  Future<Either<MainFailures, SearchResultModel>> searchResults(
      {required String searchLocation});
  Future<Either<MainFailures, SearchResultModel>> bengaluruDetails();
  Future<Either<MainFailures, SearchResultModel>> kollamDetails();
  Future<Either<MainFailures, SearchResultModel>> mavelikaraDetails();
}
