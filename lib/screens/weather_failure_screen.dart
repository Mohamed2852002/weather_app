import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeatherFailureScreen extends StatelessWidget {
  const WeatherFailureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Weather Failure',
        style: TextStyle(fontSize: 28.sp),
      ),
    );
  }
}
