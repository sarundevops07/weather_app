import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/domain/core/failures/main_failures.dart';
import 'package:weather_app/domain/models/weather_app/weather_model.dart';
import 'package:weather_app/domain/repo/i_search_repo.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

@injectable
class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  final ISearchRepository iSearchRepository;

  HomeScreenBloc(this.iSearchRepository) : super(HomeScreenState.initial()) {
// Search Result

    on<SearchResults>((event, emit) async {
      // loading state

      emit(state.copyWith(isLoading: true));

      // get data from api

      final result = await iSearchRepository.searchResults(
          searchLocation: event.searchValue);
      log(result.toString());
      // display to ui

      final searchState = result.fold(
          (MainFailures failures) => HomeScreenState(
              searchResult: SearchResultModel(),
              isError: true,
              isLoading: false),
          (SearchResultModel success) => HomeScreenState(
              searchResult: success, isError: false, isLoading: false));
      emit(searchState);
    });

//Bangalore Details

    on<BengaluruDetails>((event, emit) async {
      // loading state

      emit(state.copyWith(isLoading: true));

      // get data from api

      final result = await iSearchRepository.bengaluruDetails();

      // display to ui

      emit(result.fold(
          (MainFailures failures) => HomeScreenState(
              searchResult: SearchResultModel(),
              isError: true,
              isLoading: false),
          (SearchResultModel success) => HomeScreenState(
              searchResult: success, isError: false, isLoading: false)));
    });
  }
}
