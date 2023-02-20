import 'package:flutter/cupertino.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:movies_app/domain/entities/trending_movies/trending_movies_entity.dart';
import 'package:movies_app/domain/interactors/holidays/trending_movies_list_interactor.dart';
import 'package:movies_app/presentation/providers/base_provider.dart';

class TrendingMoviesListProvider extends BaseProvider with ChangeNotifier {
  final _readAllProductInteractor = Injector().get<TrendingMoviesListInteractor>();
  bool isLoading = false;
  List<Results> trendingMoviesList = [];

  // Future<List<Results>> getAllTrendingMovies() async {
  //   var allHolidaysList = await _readAllProductInteractor.getTrendingMoviesList();
  //   allHolidaysList.fold((l) {
  //     trendingMoviesList= [];
  //   }, (r) {
  //     if (r != null) {
  //       setLoading(false);
  //     } else {
  //       setLoading(true);
  //     }
  //     trendingMoviesList = r;
  //     notifyListeners();
  //   });
  //   return trendingMoviesList;
  // }

  getAllTrendingMovies() async {
    var data = await _readAllProductInteractor.getTrendingMoviesList();
    data.fold((l) => null, (r) {
      if (r.isNotEmpty) {
        setLoading(false);

      } else {
        setLoading(true);
      }
      trendingMoviesList = r;
      notifyListeners();
    });
    return data;
  }


  setLoading(bool isLoad) {
    isLoading = isLoad;
    notifyListeners();
  }
}