import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/presentation/const/assets/assets.dart';
import 'package:weather_app/presentation/const/colors/colors.dart';
import 'package:weather_app/presentation/const/const.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen(
      {super.key,
      required this.name,
      required this.date,
      required this.url,
      required this.tempC,
      required this.text,
      required this.lat,
      required this.lon,
      required this.windGust,
      required this.precipation,
      required this.cloud,
      required this.sunrise,
      required this.sunset,
      required this.moonrise,
      required this.moonset});

  final String name;
  final String date;
  final String url;
  final String tempC;
  final String text;
  final String lat;
  final String lon;
  final String windGust;
  final String precipation;
  final String cloud;
  final String sunrise;
  final String sunset;
  final String moonrise;
  final String moonset;

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //     title: const Text(
      //       "Kollam",
      //       style: TextStyle(color: blackColor),
      //     ),
      //     centerTitle: true,
      //     backgroundColor: whiteColor.withOpacity(0)),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(backgroundImage))
              // color: greenColor,
              ),
          height: sizeHeight,
          width: sizeWidth,
          child: SingleChildScrollView(
            child: Column(
              children: [
                sectionOne(sizeWidth),
                spaceHeight50,
                refactoredColumnForWeatherConditions(
                    fontSize: 35,
                    value1: windGust,
                    value2: precipation,
                    value3: cloud,
                    sizeWidth: sizeWidth,
                    icon1: "🌬️",
                    icon2: "🌧️",
                    icon3: "😶‍🌫️"),
                spaceHeight10,
                refactoredColumnForSunMoonRiseSet(
                    fontSize: 35,
                    icon1: "🌄",
                    icon2: "🌅",
                    icon3: "🌝",
                    icon4: "🌚",
                    sizeWidth: sizeWidth,
                    value1: sunrise,
                    value2: sunset,
                    value3: moonrise,
                    value4: moonset)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column refactoredColumnForWeatherConditions(
      {required double sizeWidth,
      required String icon1,
      required String icon2,
      required String icon3,
      required String value1,
      required String value2,
      required String value3,
      double? fontSize}) {
    return Column(
      children: [
        weatherConditions(
            fontSize: fontSize,
            icon1: icon1,
            icon2: icon2,
            icon3: icon3,
            sizeWidth: sizeWidth,
            curve1: const BorderRadius.only(topLeft: Radius.circular(20)),
            curve2: const BorderRadius.only(topRight: Radius.circular(20))),
        weatherConditions(
            icon1: value1,
            icon2: value2,
            icon3: value3,
            sizeWidth: sizeWidth,
            curve1: const BorderRadius.only(bottomLeft: Radius.circular(20)),
            curve2: const BorderRadius.only(bottomRight: Radius.circular(20))),
      ],
    );
  }

  Row weatherConditions(
      {required double sizeWidth,
      required BorderRadiusGeometry curve1,
      required BorderRadiusGeometry curve2,
      required String icon1,
      required String icon2,
      required String icon3,
      double? fontSize}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        refactoredContainer(
          fontSize: fontSize,
          iconAndValue: icon1,
          height: sizeWidth * 0.15,
          width: sizeWidth * 0.3,
          curve: curve1,
        ),
        refactoredContainer(
          iconAndValue: icon2,
          fontSize: fontSize,
          height: sizeWidth * 0.15,
          width: sizeWidth * 0.3,
        ),
        refactoredContainer(
            iconAndValue: icon3,
            fontSize: fontSize,
            height: sizeWidth * 0.15,
            width: sizeWidth * 0.3,
            curve: curve2),
      ],
    );
  }

  Column refactoredColumnForSunMoonRiseSet(
      {required double sizeWidth,
      required String icon1,
      required String icon2,
      required String icon3,
      required String icon4,
      required String value1,
      required String value2,
      required String value3,
      required String value4,
      double? fontSize}) {
    return Column(
      children: [
        sunMoonRiseSet(
            fontSize: fontSize,
            icon1: icon1,
            icon2: icon2,
            icon3: icon3,
            icon4: icon4,
            sizeWidth: sizeWidth,
            curve1: const BorderRadius.only(topLeft: Radius.circular(20)),
            curve2: const BorderRadius.only(topRight: Radius.circular(20))),
        sunMoonRiseSet(
            icon1: value1,
            icon2: value2,
            icon3: value3,
            icon4: value4,
            sizeWidth: sizeWidth,
            curve1: const BorderRadius.only(bottomLeft: Radius.circular(20)),
            curve2: const BorderRadius.only(bottomRight: Radius.circular(20))),
      ],
    );
  }

  Row sunMoonRiseSet(
      {double? sizeWidth,
      BorderRadiusGeometry? curve1,
      BorderRadiusGeometry? curve2,
      required String icon1,
      required String icon2,
      required String icon3,
      required String icon4,
      double? fontSize}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        refactoredContainer(
          fontSize: fontSize,
          iconAndValue: icon1,
          height: sizeWidth! * 0.15,
          width: sizeWidth * 0.25,
          curve: curve1,
        ),
        refactoredContainer(
          iconAndValue: icon2,
          fontSize: fontSize,
          height: sizeWidth * 0.15,
          width: sizeWidth * 0.25,
        ),
        refactoredContainer(
          iconAndValue: icon3,
          fontSize: fontSize,
          height: sizeWidth * 0.15,
          width: sizeWidth * 0.24,
        ),
        refactoredContainer(
            iconAndValue: icon4,
            fontSize: fontSize,
            height: sizeWidth * 0.15,
            width: sizeWidth * 0.25,
            curve: curve2),
      ],
    );
  }

  Container refactoredContainer(
      {double? height,
      double? width,
      BorderRadiusGeometry? curve,
      var color,
      required String iconAndValue,
      double? fontSize}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: curve,
        color: transparent.withOpacity(0.4),
      ),
      height: height,
      width: width,
      child: Center(
          child: Text(
        iconAndValue,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700, fontSize: fontSize),
      )),
    );
  }

  Column sectionOne(double sizeWidth) {
    return Column(children: [
      Text(
        name,
        style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 17),
      ),
      spaceHeight20,
      Text(
        date,
        style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 17),
      ),
      spaceHeight20,
      CircleAvatar(
        radius: sizeWidth * 0.3,
        backgroundImage: const AssetImage(cloudyPng),
      ),
      spaceHeight10,
      Text(
        tempC,
        style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 25),
      ),
      spaceHeight10,
      Text(
        text,
        style: GoogleFonts.poppins(fontWeight: FontWeight.w700),
      ),
      spaceHeight20,
      latAndLonSection(text: "lat", textValue: lat),
      spaceHeight10,
      latAndLonSection(text: "lon", textValue: lon)
    ]);
  }

  Row latAndLonSection({required String text, required String textValue}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: GoogleFonts.poppins(fontWeight: FontWeight.w700),
        ),
        spaceWidth25,
        Text(
          textValue,
          style: GoogleFonts.poppins(fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
