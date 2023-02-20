import 'package:flutter/material.dart';
import 'package:movies_app/domain/entities/trending_movies/trending_movies_entity.dart';
import 'package:movies_app/presentation/common/utils/app_constants.dart';
import 'package:movies_app/presentation/common/utils/widgets/simple_alert_dialog.dart';
import 'package:movies_app/presentation/providers/trending_movies/treding_movies_list_provider.dart';
import 'package:provider/provider.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // getData();
    var provider =
        Provider.of<TrendingMoviesListProvider>(context, listen: false);
    provider.getAllTrendingMovies();
    super.initState();
  }

  getData() async {
    TrendingMoviesEntity trendingMoviesEntity = TrendingMoviesEntity();

    final response = await http.get(
      Uri.parse(
          'https://api.themoviedb.org/3/trending/movie/week?api_key=e2dedc66ac05c379caf2d8f4fe56b94d'),
    );

    // var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
      convert.jsonDecode(response.body) as Map<String, dynamic>;
      trendingMoviesEntity = TrendingMoviesEntity.fromJson(jsonResponse);
      print('Json response of latest movies: $jsonResponse');
      print('Json data: ${trendingMoviesEntity.results?.first.title}');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
      Consumer<TrendingMoviesListProvider>(
        builder: (context, moviesValue, child) {
          return (moviesValue.isLoading)
              ? const Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Color(AppConstants.COLOR_WHITE)),
                  ),
                )
              : ListView.builder(
                  itemCount: moviesValue.trendingMoviesList.length,
                  itemBuilder: (context, index) {
                    var responseData = moviesValue.trendingMoviesList[index];
                    // var holidayDate =
                    // new DateFormat(AppConstants.DD_MM_YYYY)
                    //     .format(responseDate);
                    return ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Card(
                            color: Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Text(responseData.title.toString())),
                      ),
                    );
                  },
                );
        },
      ),
    );
  }

  //---Display Trending Movies List---
  _getTrendingMoviesList() {
    return FutureBuilder<List<Results>>(
      future: Provider.of<TrendingMoviesListProvider>(context, listen: false)
          .getAllTrendingMovies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SizedBox(
            height: MediaQuery.of(context).size.height / 1.3,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.data!.isEmpty || snapshot.data?.length == 0) {
          return SimpleAlertDialog(
              context: context,
              message: AppConstants.ALERT_SOMETHING_WENT_WRONG,
              onPressedOk: () {})
              .show();
        } else {
          List<Results> trendingMoviesList = snapshot.data!;
          return Consumer<TrendingMoviesListProvider>(
            builder: (context, holidaysValue, child) {
              return (holidaysValue.isLoading)
                  ? const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                      Color(AppConstants.COLOR_THEME_BLUE)),
                ),
              )
                  : ListView.builder(
                itemCount: trendingMoviesList.length,
                itemBuilder: (context, index) {
                  var responseData = trendingMoviesList[index];
                  // var holidayDate =
                  // new DateFormat(AppConstants.DD_MM_YYYY)
                  //     .format(responseDate);
                  return ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Card(
                          color: Colors.white,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Text(responseData.title!)),
                    ),
                  );
                },
              );
            },
          );
        }
      },
    );
  }
}

