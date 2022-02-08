part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState.initial() = Initial;
  factory SearchState.submitted(String query) = Submitted;
}
