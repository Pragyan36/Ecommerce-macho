import 'package:ecommerceshop/View.dart/Splashscreen/Splashscreen.dart';
import 'package:ecommerceshop/constant/Textstyle.dart';
import 'package:ecommerceshop/constant/design_constant.dart';
import 'package:ecommerceshop/provider/app_provider.dart';
import 'package:ecommerceshop/provider/controller/Product_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: getProviders(),
     child: Consumer<ProductState>(
      builder:(context,product,_){
        return ScreenUtilInit(
           designSize: designSize,
                            child: MaterialApp(
                              scrollBehavior:
                                  ScrollConfiguration.of(context).copyWith(
                                physics: const BouncingScrollPhysics(),
                              ),
                            
                              title: "Sanatan Sewa",
                              debugShowCheckedModeBanner: false,
                              home:  Splashscreen(),
                        
                           
                            ),

        );

      }
      
     ),
       
      );
      
    
  }
}

