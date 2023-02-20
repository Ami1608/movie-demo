import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/common/failure.dart';
import 'package:movies_app/domain/entities/trending_movies/trending_movies_entity.dart';
import 'package:movies_app/domain/gateway/read_gateway_no_args.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class TrendingMoviesListGateway
    implements ReadGateWayNoArgs<Either<Failure, List<Results>>> {
  @override
  Future<Either<Failure, List<Results>>> read() async {
    try {
      //   final result =
      //       await _fireStore.collection(AppConstants.COLLECTION_HOLIDAYS).get();
      //   List<HolidaysEntity> list = [];
      //   if (result.docs.isNotEmpty && result.docs.length > 0) {
      //     result.docs.forEach((element) {
      //       if (element.exists) {
      //         final data = element.data();
      //         DateTime dateTime = element['date'].toDate();
      //
      //         HolidaysEntity userLeavesEntity = HolidaysEntity.fromJson(data,dateTime);
      //         list.add(userLeavesEntity);
      //       }
      //     });
      //   }
      //   print("Holidays list in gateway : ${list.first.date}");
      TrendingMoviesEntity trendingMoviesEntity = TrendingMoviesEntity();

      var url = Uri.https(
          'https://api.themoviedb.org',
          '/3/trending/movie/week?api_key=e2dedc66ac05c379caf2d8f4fe56b94d',
          {'q': '{http}'});
      // https://api.themoviedb.org/3/trending/movie/week?api_key=e2dedc66ac05c379caf2d8f4fe56b94d
      // Await the http get response, then decode the json-formatted response.
      final response = await http.get(
        Uri.parse(
            'https://api.themoviedb.org/3/trending/movie/week?api_key=e2dedc66ac05c379caf2d8f4fe56b94d'),
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlMmRlZGM2NmFjMDVjMzc5Y2FmMmQ4ZjRmZTU2Yjk0ZCIsInN1YiI6IjYzZTY1ZjQxOTUxMmUxMDA4NWNkMmU0OCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.6u5ETUAsytNPLA8cvMrL2xg91ZXJXhem3uvfQl5yPnM',
        },
      );

      // var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse =
            convert.jsonDecode(response.body) as Map<String, dynamic>;
        trendingMoviesEntity = TrendingMoviesEntity.fromJson(jsonResponse);
        print('Json response of latest movies: $jsonResponse');
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }

      return Right(trendingMoviesEntity.results!);
    } on Exception catch (e) {
      return Left(GeneralError(e.toString()));
    }
  }
}
