import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/common/failure.dart';
import 'package:movies_app/domain/entities/trending_movies/trending_movies_entity.dart';
import 'package:movies_app/domain/gateway/read_gateway_no_args.dart';

import 'trending_movies_list_interactor.dart';

class TrendingMoviesListInteractorImpl implements TrendingMoviesListInteractor {
  final ReadGateWayNoArgs<Either<Failure,List<Results>>> gateWay;

  TrendingMoviesListInteractorImpl({required this.gateWay});

  @override
  Future<Either<Failure, List<Results>>> getTrendingMoviesList() {
    return gateWay.read();
  }
}