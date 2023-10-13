part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required SearchResultModel searchResult,
    required bool isError,
    required bool isLoading,
  }) = Initial;
  factory HomeScreenState.initial() => HomeScreenState(
      searchResult: SearchResultModel(), isError: false, isLoading: false);
}
