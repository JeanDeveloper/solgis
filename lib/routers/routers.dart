import 'package:flutter/material.dart';
import 'package:solgis/home/presentation/pages/pages.dart';

class AppRoutes {

  static const initialRoute = 'welcome';
  
  static Map <String, Widget Function(BuildContext)> getAppRoutes(){

    Map <String, Widget Function(BuildContext)> appRoutes = {};
    
    appRoutes.addAll({
       // RAIZ GENERAL DE TODA LA APLICACION SOLGIS
      'welcome':   (BuildContext context ) => const WelcomePage(),
      'home':   (BuildContext context ) => const HomePage(),

    });
    
    return appRoutes;
  
  }


}