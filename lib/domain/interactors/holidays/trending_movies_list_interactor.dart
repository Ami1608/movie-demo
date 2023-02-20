import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/common/failure.dart';
import 'package:movies_app/domain/entities/trending_movies/trending_movies_entity.dart';

abstract class TrendingMoviesListInteractor {
  Future<Either<Failure,List<Results>>> getTrendingMoviesList();
}