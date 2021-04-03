

import 'package:flutter/cupertino.dart';
import 'package:servicesease/models/onboarding_model.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnboardingController extends GetxController {
  var selectedIndex = 0.obs;
  var pageController = PageController();
  bool get islastPage => selectedIndex.value == onboardingController.length -1;

  forwardAction(){
    if(islastPage){

    }else{
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.bounceIn);
    }
  }

  List<OnboardingModel> onboardingController = [
    OnboardingModel("assets/welcome.png", "Welcome to Service Ease", "We are here to help you to get great services at your doorstep"),
    OnboardingModel("assets/near_you.png","Near You", "Service Experts near your location to provide quick and reliable services"),
    OnboardingModel("assets/affordable.png","Affordable", "Most affordable services to Save your money "),
    OnboardingModel("assets/save_time.png", "Save Time", "No more issues of getting the experts from the shop or calling multiple times! "),
    OnboardingModel("assets/experts.png", "Expert Services", "Our highly trained professionals provide great services that worth your money"),
  ];
}