import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_browser/bloc/search/search_bloc.dart';

void main() {
  group('SearchBloc', () {
    test('initial state is correct', () {
      final searchBloc = SearchBloc();
      expect(searchBloc.state, SearchState.initial());
    });

    blocTest<SearchBloc, SearchState>('emits nothing if text is empty',
        build: () => SearchBloc(),
        act: (bloc) => bloc.add(const Submit('')),
        expect: () => <SearchState>[]);

    blocTest<SearchBloc, SearchState>('emits Submitted if text is not empty',
        build: () => SearchBloc(),
        act: (bloc) => bloc.add(const Submit('text')),
        expect: () => <SearchState>[Submitted('text')]);
  });
}
