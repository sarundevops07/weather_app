import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:weather_app/application/home_screen/home_screen_bloc.dart';
import 'package:weather_app/domain/models/weather_app/weather_model.dart';
import 'package:weather_app/presentation/const/colors/colors.dart';
import 'package:weather_app/presentation/screens/weather_screen/weather_screen.dart';

class CityList extends StatefulWidget {
  final List<CityWeather> cityList;
  const CityList({super.key, required this.cityList});

  @override
  State<CityList> createState() => _CityListState();
}

class _CityListState extends State<CityList> {
  get itemBuilder => null;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // context
      //     .read<HomeScreenBloc>()
      //     .add(const HomeScreenEvent.bengaluruDetails());
    });
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return Container(
      height: sizeHeight - sizeWidth * 0.57,
      width: sizeWidth,
      decoration: BoxDecoration(
          color: transparentWithOpacity1,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(50))),
      child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
        builder: (context, state) {
          if (state.isError) {
            return Center(
              child:
                  LoadingAnimationWidget.discreteCircle(color: red, size: 67),
            );
          } else if (state.isLoading) {
            return Center(
              child: LoadingAnimationWidget.dotsTriangle(
                  color: greenColor, size: 67),
            );
          }

          return ListView.separated(
              itemBuilder: (context, index) {
                final bangaloreWeather = state.searchResult;
                return CityCard(
                  name: bangaloreWeather.location?.name,
                  tempC: bangaloreWeather.currentWeather?.tempC.toString() ??
                      "N/A",
                  text:
                      bangaloreWeather.currentWeather?.condition?.text ?? "N/A",
                  url:
                      bangaloreWeather.currentWeather?.condition?.icon ?? "N/A",
                  onDelete: () {
                    setState(() {
                      widget.cityList.removeAt(index);
                    });
                  },
                );
              },
              separatorBuilder: (context, index) => const SizedBox(),
              itemCount: widget.cityList.length);
        },
      ),
    );
  }
}

class CityCard extends StatelessWidget {
  const CityCard(
      {super.key,
      required this.name,
      required this.tempC,
      required this.text,
      this.url,
      required this.onDelete});
  final String? name;
  final String? tempC;
  final String? text;
  final String? url;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
      child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
        builder: (context, state) {
          final weatherDetails = state.searchResult;
          final forecast = weatherDetails.forecastData?.forecastDays[0];
          final sunrise = forecast?.astro.sunset;
          final sunset = forecast?.astro.sunset;
          final moonrise = forecast?.astro.moonrise;
          final moonset = forecast?.astro.moonset;
          final wingGust = weatherDetails.currentWeather?.gustKph;
          final cloud = weatherDetails.currentWeather?.cloud;
          final precipation = weatherDetails.currentWeather?.precipInches;
          final date = forecast?.date;
          final lat = weatherDetails.location?.latitude;
          final lon = weatherDetails.location?.longitude;
          return GestureDetector(
            onTap: () {
              Navigator.push(
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
                        text: text.toString(),
                        url: url.toString(),
                        windGust: wingGust.toString(),
                        moonrise: moonrise.toString(),
                        cloud: cloud.toString(),
                        date: date.toString()),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              //  width: 100,
              color: whiteColor.withOpacity(0.22),
              height: sizeWidth * 0.27,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          name ?? "nul",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        Text(
                          tempC ?? "nul",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        Text(
                          text ?? "nul",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        )
                      ]),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(url ?? ""),
                  ),
                  IconButton(
                    onPressed: onDelete,
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
