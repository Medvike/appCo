
import 'package:app_co/manager/getXControllers/stringRoutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'services.dart';

class MyMiddleware extends GetMiddleware{
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route){

    if(myServices.pref.getInt("openScreen") == 2){

      return const RouteSettings(name: AppStringRoutes.login);

    } else if(myServices.pref.getInt("openScreen") == 3) {

      return const RouteSettings(name: AppStringRoutes.mainScreen);

    }


    }

}