import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:weather_app/application/home_screen/home_screen_bloc.dart';
import 'package:weather_app/domain/models/weather_app/weather_model.dart';
import 'package:weather_app/presentation/const/colors/colors.dart';
import 'package:weather_app/presentation/screens/weather_screen/weather_screen.dart';

class MainWeatherCard extends StatefulWidget {
  final List<CityWeather> cityList;
  const MainWeatherCard({super.key, required this.cityList});

  @override
  State<MainWeatherCard> createState() => _MainWeatherCardState();
}

class _MainWeatherCardState extends State<MainWeatherCard> {
  void addToCityList(CityWeather cityWeather) {
    setState(() {
      widget.cityList.add(cityWeather);
    });
  }

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      builder: (context, state) {
        final weatherDetails = state.searchResult;
        final forecast = weatherDetails.forecastData?.forecastDays[0];

        final name = weatherDetails.location?.name ?? "No name";
        final region = weatherDetails.location?.region ?? "No region";
        final lat = weatherDetails.location?.latitude;
        final lon = weatherDetails.location?.longitude;
        final country = weatherDetails.location?.country ?? "No country";
        final url = weatherDetails.currentWeather?.condition?.icon;
        final tempC = weatherDetails.currentWeather?.tempC ?? "";
        final text = weatherDetails.currentWeather?.condition?.text ??
            "No text Provided";
        final wingGust = weatherDetails.currentWeather?.gustKph;
        final cloud = weatherDetails.currentWeather?.cloud;
        final precipation = weatherDetails.currentWeather?.precipInches;
        final sunrise = forecast?.astro.sunrise;
        final sunset = forecast?.astro.sunset;
        final moonrise = forecast?.astro.moonrise;
        final moonset = forecast?.astro.moonset;
        final date = forecast?.date;

        if (state.isError) {
          return Center(
              child: LoadingAnimationWidget.staggeredDotsWave(
            color: red,
            size: 70,
          ));
        } else if (state.isLoading) {
          return Center(
              child: LoadingAnimationWidget.staggeredDotsWave(
            color: greenColor,
            size: 70,
          ));
        }
        return GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WeatherScreen(
                    lat: lat.toString(),
                    lon: lon.toString(),
                    moonset: moonset.toString(),
                    name: name.toString(),
                    precipation: precipation.toString(),
                    sunrise: sunrise.toString(),
                    sunset: sunset.toString(),
                    tempC: tempC.toString(),
                    text: text,
                    url: url.toString(),
                    windGust: wingGust.toString(),
                    moonrise: moonrise.toString(),
                    cloud: cloud.toString(),
                    date: date.toString()),
              )),
          child: Container(
            padding: const EdgeInsets.only(left: 14, top: 10),
            alignment: Alignment.topLeft,
            height: sizeWidth * 0.60,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        // Add the city to the list
                        addToCityList(CityWeather(
                          name: name,
                          temperature: tempC.toString(),
                          weatherText: text,
                        ));
                      },
                      icon: const Icon(
                        Icons.add,
                        color: greenColor,
                        size: 35,
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    region,
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(width: 21),
                  Text(
                    tempC.toString(),
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700, fontSize: 40),
                  ),
                  CircleAvatar(
                    radius: sizeWidth * 0.17,
                    backgroundImage: url == null ? null : NetworkImage(url),
                  )
                ],
              ),
              const SizedBox(
                height: 17.7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    country,
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    text,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w800, fontSize: 15),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )
            ]),
          ),
        );
      },
    );
  }
}
