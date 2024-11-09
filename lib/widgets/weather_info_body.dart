import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/weather_app.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    final WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            getThemeColor(weatherModel.condition),
            getThemeColor(weatherModel.condition)[300]!,
            getThemeColor(weatherModel.condition)[100]!,
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20.h,
            right: 20.w,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(), padding: EdgeInsets.all(16.r)),
              onPressed: () {
                BlocProvider.of<GetWeatherCubit>(context)
                    .getWeather(cityName: weatherModel.cityName);
              },
              child: Icon(
                Icons.refresh_rounded,
                size: 28.r,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weatherModel.cityName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.sp,
                  ),
                ),
                Text(
                  'Updated at ${DateFormat('hh:mm a').format(weatherModel.time)}',
                  style: TextStyle(
                    fontSize: 22.sp,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      !weatherModel.icon.contains('http')
                          ? 'https:${weatherModel.icon}'
                          : weatherModel.icon,
                    ),
                    Text(
                      '${weatherModel.avgTemp.round()}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.sp,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Maxtemp: ${weatherModel.maxTemp.round()}',
                          style: TextStyle(
                            fontSize: 18.sp,
                          ),
                        ),
                        Text(
                          'Mintemp: ${weatherModel.minTemp.round()}',
                          style: TextStyle(
                            fontSize: 18.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  weatherModel.condition,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
