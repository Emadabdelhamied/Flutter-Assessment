import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/themes/app_theme.dart';
import '../../core/utils/app_strings.dart';
import '../chat/presentation/cubit/chat_cubit.dart';
import '../intro/presentation/pages/intro_screen.dart';

class SampleApp extends StatelessWidget {
  const SampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return MultiBlocProvider(
        providers: [
          BlocProvider<ChatCubit>(
            create: (BuildContext context) => ChatCubit(),
          ),
        ],
        child: MaterialApp(
          title: AppStrings.appName,
          theme: appTheme(),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          home: Builder(
            builder: (context) => ScreenUtilInit(
              designSize: Size(MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (BuildContext context, Widget? child) =>
                  const IntroScreen(),
            ),
          ),
        ),
      );
    });
  }
}
