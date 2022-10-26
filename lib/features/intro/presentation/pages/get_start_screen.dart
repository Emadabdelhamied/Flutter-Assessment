import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/routes/app_routes.dart';
import '../../../../core/components/generic_button.dart';
import '../../../../core/utils/color_utils.dart';
import '../../../../core/utils/fonts_utils.dart';
import '../../../../core/utils/images.dart';
import '../../../../core/utils/textstyle_utils.dart';
import '../../../app/main_screen.dart';
import '../widgets/button_change_lang.dart';
import '../widgets/top_curve.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 260.w,
              child: Stack(
                children: [
                  const TopCurve(),
                  Positioned(
                    right: 40.w,
                    top: 100.h,
                    left: 0.w,
                    child: RichText(
                      text: TextSpan(
                        style: TexStyleUtils.textStyleColor(
                            color: black,
                            size: 18,
                            fontWeight: FontWeightUtils.light),
                        children: <TextSpan>[
                          const TextSpan(text: 'Hi, My name is '),
                          TextSpan(
                            text: 'Oranobot\n',
                            style: TexStyleUtils.textStyleColor(
                                color: black,
                                size: 18,
                                fontWeight: FontWeightUtils.bold),
                          ),
                          const TextSpan(
                            text:
                                'I will always be there to \nhelp and assist you.\n',
                          ),
                          TextSpan(
                              text: 'Say Start To go to Next.',
                              style: TexStyleUtils.textStyleColor(
                                  color: black,
                                  size: 18,
                                  height: 3,
                                  fontWeight: FontWeightUtils.light)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                height: 250.h,
                width: 250.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(robotImage),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GenericButton(
              onPressed: () {
                AppNavigator.push(context: context, screen: const HomeMain());
              },
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text(
                tr('next'),
                style: TexStyleUtils.textStyleColor(
                    color: white, size: 18, fontWeight: FontWeightUtils.medium),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            const ButtonChangeLang(),
            SizedBox(
              height: 25.h,
            ),
          ],
        ),
      ),
    );
  }
}
