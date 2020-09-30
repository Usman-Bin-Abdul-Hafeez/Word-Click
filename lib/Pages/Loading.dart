import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time_app/Services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Pakistan', flag: 'pk.png', url: 'Asia/Karachi');
    instance.getTime();

    await Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/home',arguments: {
        'location': instance.location,
        'flag': instance.flag,
        'time': instance.time,
        'isDayTime': instance.isDayTime,
      });
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 46, 74, 1),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 25.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/logo.png',
                height: 200.0,
                width: 200.0,
              ),
              SizedBox(height: 25.0,),
              SpinKitDoubleBounce(
                color: Colors.indigo[100],
                size: 50.0,
              ),
              SizedBox(height: 190.0,),
              Text(
                "Developed by:",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.indigo[100],
                ),
              ),
              Text(
                "Usman Bin Abdul Hafeez",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
        ),
      ),
    );
  }
}
