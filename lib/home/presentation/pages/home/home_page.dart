import 'package:flutter/material.dart';
import 'package:solgis/home/presentation/pages/home/widgets/card_app.dart';
import 'package:solgis/theme/theme.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      backgroundColor: AppTheme.lighTheme.backgroundColor,

      appBar: AppBar(

        elevation: 0,
        backgroundColor: AppTheme.lighTheme.backgroundColor,
        title: Text('SOLGIS', style: Theme.of(context).textTheme.headline6),
        centerTitle: true,

      ),

      body: const HomePageBody(),
    
    );
    
  }

}


class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width*0.,
      height: size.height*0.25,
      color: Colors.red,
    );


    // return GridView.count(

    //   padding:  EdgeInsets.symmetric(horizontal: size.width*0.05, vertical: size.height*0.04),
    //   // mainAxisSpacing:  size.height*0.05 ,
    //   // crossAxisSpacing: size.width*0.05,
    //   crossAxisCount: 2,
      
    //   children: List.generate(10, (index) {

    //     return CardApp(index: index);
        
    //   }),

    // );    



  }

}