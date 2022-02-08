import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState.initial()) {
    on<SearchEvent>(
      (event, emit) => event.when(
        submit: (text) => _submit(text, emit),
      ),
    );
  }

  void _submit(String text, Emitter emit) {
    if (text.isNotEmpty) {
      emit(
        SearchState.submitted(text),
      );
    }
  }
}
