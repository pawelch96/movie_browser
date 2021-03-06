import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:movie_browser/models/movie.dart';
import 'package:movie_browser/models/movie_details.dart';
import 'package:movie_browser/models/movie_list.dart';

abstract class ApiService {
  Future<List<Movie>> searchMovies(String query);
  Future<MovieDetails> getMovieDetails(int id);
}

@LazySingleton(as: ApiService)
class ApiServiceImpl implements ApiService {
  ApiServiceImpl({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  static const apiKey = 'api_key'; //TODO provide API key
  static const baseUrl = 'https://api.themoviedb.org/3';

  @override
  Future<List<Movie>> searchMovies(String query) async {
    final parameters = {
      'api_key': apiKey,
      'query': query,
    };

    final encodedParameters = parameters.entries
        .map((entry) => '${_encode(entry.key)}=${_encode(entry.value)}')
        .join('&');

    final response = await _httpClient
        .get(Uri.parse('$baseUrl/search/movie?$encodedParameters'));

    if (response.statusCode != 200) {
      throw Exception();
    }

    final json = jsonDecode(response.body);
    final movieList = MovieList.fromJson(json);

    return movieList.results;
  }

  @override
  Future<MovieDetails> getMovieDetails(int id) async {
    final response = await _httpClient.get(
      Uri.parse('$baseUrl/movie/$id?api_key=$apiKey'),
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    return MovieDetails.fromJson(jsonDecode(response.body));
  }

  String _encode(String component) => Uri.encodeComponent(component);
}
