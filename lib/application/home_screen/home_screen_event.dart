part of 'home_screen_bloc.dart';

@freezed
class HomeScreenEvent with _$HomeScreenEvent {
  const factory HomeScreenEvent.searchResults({required String searchValue}) =
      SearchResults;
  const factory HomeScreenEvent.bengaluruDetails() = BengaluruDetails;
}
