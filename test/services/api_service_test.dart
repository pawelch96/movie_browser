import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:movie_browser/models/movie.dart';
import 'package:movie_browser/models/movie_details.dart';
import 'package:movie_browser/services/api_service.dart';

class FakeUri extends Fake implements Uri {}

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

void main() {
  group('ApiService', () {
    late ApiServiceImpl apiService;
    late http.Client httpClient;
    const apiKey = 'api_key';

    setUpAll(() {
      registerFallbackValue(FakeUri());
    });

    setUp(() {
      httpClient = MockHttpClient();
      apiService = ApiServiceImpl(httpClient: httpClient);
    });

    group('searchMovies', () {
      const query = 'potter';

      test('correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('[]');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        try {
          await apiService.searchMovies(query);
        } catch (_) {}
        verify(
          () {
            final Map<String, String> parameters = {
              'api_key': apiKey,
              'query': query,
            };
            String _encode(String component) => Uri.encodeComponent(component);
            final encodedParameters = parameters.entries
                .map((entry) => '${_encode(entry.key)}=${_encode(entry.value)}')
                .join('&');

            return httpClient.get(
              Uri.parse(
                  'https://api.themoviedb.org/3/search/movie?$encodedParameters'),
            );
          },
        ).called(1);
      });

      test('throws Exception on non-200 response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        expect(
          () async => await apiService.searchMovies(query),
          throwsA(isA<Exception>()),
        );
      });

      test('returns List<Movie> on valid response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('''
          {
            "total_results":1,
            "results":[{
                "id":673,
                "title":"Harry Potter and the Prisoner of Azkaban",
                "vote_average":8
                }]
              }
          ''');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        final actual = await apiService.searchMovies(query);
        expect(
            actual,
            isA<List<Movie>>()
                .having((p0) => p0[0].title, 'title',
                    'Harry Potter and the Prisoner of Azkaban')
                .having((p0) => p0[0].id, 'id', 673)
                .having((p0) => p0[0].voteAverage, 'voteAverage', 8));
      });
    });

    group('getMovieDetails', () {
      const id = 673;
      test('correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('{}');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        try {
          await apiService.getMovieDetails(id);
        } catch (_) {}
        verify(
          () {
            return httpClient.get(Uri.parse(
                'https://api.themoviedb.org/3/movie/$id?api_key=$apiKey'));
          },
        ).called(1);
      });

      test('throws Exception on non-200 response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        expect(
          () async => await apiService.getMovieDetails(id),
          throwsA(isA<Exception>()),
        );
      });

      test('returns MovieDetails on valid response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('''
          {
            "title":"Harry Potter and the Prisoner of Azkaban",
            "budget":1000,
            "revenue":100
          }
          ''');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        final actual = await apiService.getMovieDetails(id);
        expect(
            actual,
            isA<MovieDetails>()
                .having((p0) => p0.title, 'title',
                    'Harry Potter and the Prisoner of Azkaban')
                .having((p0) => p0.budget, 'budget', 1000)
                .having((p0) => p0.revenue, 'revenue', 100));
      });
    });
  });
}
