import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:movies_app/data/gateway/trending_movies/trending_movies_list_gateway.dart';
import 'package:movies_app/domain/interactors/holidays/trending_movies_list_interactor.dart';
import 'package:movies_app/domain/interactors/holidays/trending_movies_list_interactor_impl.dart';

class ModuleContainer {
  Injector initialise(Injector injector) {
    injector.map<TrendingMoviesListInteractor>(
            (i) => TrendingMoviesListInteractorImpl(gateWay: TrendingMoviesListGateway()),
        isSingleton: false);

    return injector;
  }
}
