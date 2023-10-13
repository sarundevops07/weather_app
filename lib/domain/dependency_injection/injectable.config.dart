// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:weather_app/application/home_screen/home_screen_bloc.dart'
    as _i5;
import 'package:weather_app/domain/repo/i_search_repo.dart' as _i3;
import 'package:weather_app/infrastructure/search_home_screen/search_repository.dart'
    as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ISearchRepository>(() => _i4.SearchRepository());
    gh.factory<_i5.HomeScreenBloc>(
        () => _i5.HomeScreenBloc(gh<_i3.ISearchRepository>()));
    return this;
  }
}
