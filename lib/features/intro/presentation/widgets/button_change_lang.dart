import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/color_utils.dart';
import '../../../../core/utils/icons.dart';
import '../../../../core/utils/textstyle_utils.dart';
import '../pages/intro_screen.dart';

class ButtonChangeLang extends StatelessWidget {
  const ButtonChangeLang({super.key});

  @override
  Widget build(BuildContext context) {
    var currentLocal = Localizations.localeOf(context).languageCode;

    return GestureDetector(
      onTap: () {
        context.setLocale(Locale(currentLocal == 'en' ? 'ar' : 'en'));
        AppNavigator.pushAndReplacement(
            context: context, screen: const IntroScreen());
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 16.h,
            width: 16.w,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(langIcon),
              ),
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            currentLocal == 'en' ? 'العربية' : 'English',
            textAlign: TextAlign.center,
            style: TexStyleUtils.textStyleColor(color: black),
          ),
        ],
      ),
    );
  }
}
