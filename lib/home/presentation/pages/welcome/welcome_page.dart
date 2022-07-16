import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solgis/home/domain/providers/device_information.dart';
import 'package:solgis/home/presentation/widgets/widgets.dart';
import 'package:solgis/theme/theme.dart';

class WelcomePage extends StatelessWidget {
  
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final deviceProvider = Provider.of<DeviceInformation>(context, listen: false);
    deviceProvider.getInformationDevice();

    return Scaffold(

      backgroundColor: AppTheme.lighTheme.backgroundColor,
      
      body: const _HomePageBody(),
      

    );  

  }

}

class _HomePageBody extends StatelessWidget {

  const _HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;


    return SafeArea(

      child: SingleChildScrollView(
    
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
    
        child: Padding(

          padding: EdgeInsets.symmetric(horizontal:size.width*0.03, vertical: size.height*0.05),

          child: Column(
      
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
      
              Container(
      
                width: double.infinity,
                height: size.height*0.5,
                child: SvgPicture.asset('assets/welcome.svg',),
              
              ),

              SizedBox(height: size.height*0.03),
      
              const Text('Bienvenidos a SOLGIS'),
      
              SizedBox(height: size.height*0.03),
      
              const Text('Ingrese su numero'),

              SizedBox(height: size.height*0.08),
      
              const Form(
      
                autovalidateMode: AutovalidateMode.onUserInteraction,
      
                child: InputWidget(),
      
              ),

              SizedBox(height: size.height*0.03),

              ButtonWidget(

                padding: EdgeInsets.symmetric(horizontal:size.width*0.4, vertical:size.height*0.015),

                onpressed:(){

                  Navigator.pushReplacementNamed(context, 'home');
                },

                child: const Text('Ingresar',style:  TextStyle(color: Colors.white ))
              
              ),

            ],
          
          ),

        ),

      ),

    );
  
  }

}