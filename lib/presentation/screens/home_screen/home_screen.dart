import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/application/home_screen/home_screen_bloc.dart';
import 'package:weather_app/domain/models/weather_app/weather_model.dart';
import 'package:weather_app/presentation/const/assets/assets.dart';
import 'package:weather_app/presentation/const/colors/colors.dart';
import 'package:weather_app/presentation/screens/home_screen/widgets/city_list.dart';
import 'package:weather_app/presentation/screens/home_screen/widgets/main_weather_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<CityWeather> cityList = [];
  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Explore the Weather here",
            style: GoogleFonts.poppins(
                color: blueColor, fontWeight: FontWeight.w500)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.location_on,
                color: greenColor,
              ))
        ],
        backgroundColor: whiteColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CupertinoSearchTextField(
                style: const TextStyle(color: blackColor),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                onChanged: (value) {
                  context
                      .read<HomeScreenBloc>()
                      .add(HomeScreenEvent.searchResults(searchValue: value));
                }),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(backgroundImage),
                ),
              ),
              height: sizeHeight,
              child: Column(
                children: [
                  MainWeatherCard(
                    cityList: cityList,
                  ),
                  Expanded(
                      child: CityList(
                    cityList: cityList,
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
