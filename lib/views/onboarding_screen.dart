import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:servicesease/controllers/onboarding_controller.dart';
import 'package:servicesease/helper/helpers.dart';
import 'package:servicesease/views/landing_screen.dart';

class OnboardingScreen extends StatelessWidget {
  static String id = 'OnboardingScreen';

  final controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller.pageController,
            onPageChanged: controller.selectedIndex,
              itemCount: controller.onboardingController.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                        controller.onboardingController[index].imageAsset),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      controller.onboardingController[index].title,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 64.0),
                      child: Text(
                        controller.onboardingController[index].description,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                );
              }),
          Positioned(
            bottom: 30,
            left: 30,
            child: Row(
              children: List.generate(
                  controller.onboardingController.length, (index) =>
                  Obx(() {
                      return Container(
                        height: 12,
                        width: 12,
                        margin: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: controller.selectedIndex.value == index ? Colors.redAccent : Colors.grey,
                          shape: BoxShape.circle
                        ),
                      );
                    }
                  )
              ),
            ),
          ),
          Positioned(
            right: 30,
              bottom: 30,
              child: FloatingActionButton(
                backgroundColor: Helpers.redColor,
                child: Obx(() {
                  return Text(controller.islastPage ? "Start" :"Next");
                }),
                onPressed: (){
                  if(controller.islastPage){
                    Get.to(LandingScreen(), transition: Transition.rightToLeftWithFade);
//                    duration: Duration(milliseconds: 250)
                  }else{
                  controller.forwardAction();
                  }
                },
              ))
        ],
      ),
    );
  }
}
