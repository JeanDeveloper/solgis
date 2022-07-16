import 'package:flutter_device_identifier/flutter_device_identifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solgis/home/domain/providers/device_information.dart';
import 'package:solgis/routers/routers.dart';
import 'package:flutter/services.dart';



void main() async{

  runApp(const MyAppState());

  await FlutterDeviceIdentifier.requestPermission();

}


class MyAppState extends StatelessWidget {
  
  const MyAppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);


    return MultiProvider(

      providers: [

        ChangeNotifierProvider(create: (_)=> DeviceInformation())

      ],

      child: const MyApp(),

    );
    
  }

}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'SOLGIS APP',
      routes: AppRoutes.getAppRoutes(),
      initialRoute: AppRoutes.initialRoute,

    );
  
  }

}
