import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/routes/app_routes.dart';
import '../../../../core/components/generic_button.dart';
import '../../../../core/utils/color_utils.dart';
import '../../../../core/utils/fonts_utils.dart';
import '../../../../core/utils/images.dart';
import '../../../../core/utils/textstyle_utils.dart';
import '../widgets/button_change_lang.dart';
import 'get_start_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(backGroundIntroImage),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                height: 40.h,
                width: 170.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(logo),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Text(
                  "Expert From Every Planet",
                  style: TexStyleUtils.textStyleColor(
                      color: grey1,
                      size: 19,
                      fontWeight: FontWeightUtils.light),
                ),
              ),
              const Spacer(),
              GenericButton(
                onPressed: () {
                  AppNavigator.push(
                      context: context, screen: const GetStartScreen());
                },
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  tr('start'),
                  style: TexStyleUtils.textStyleColor(
                      color: white,
                      size: 18,
                      fontWeight: FontWeightUtils.medium),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    tr('have_not_acc'),
                    style: TexStyleUtils.textStyleColor(
                        color: grey1,
                        fontWeight: FontWeightUtils.medium,
                        size: 12),
                  ),
                  Text(
                    tr('sign_up'),
                    style: TexStyleUtils.textStyleColor(
                        color: primary,
                        fontWeight: FontWeightUtils.medium,
                        size: 12),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              const ButtonChangeLang(),
              SizedBox(
                height: 25.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
