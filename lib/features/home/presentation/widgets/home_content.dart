import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/models/dummy_data_home.dart';
import 'card_online_widget.dart';
import 'card_recomended_widget.dart';
import 'home_title_widget.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          HomeTitleWidget(title: tr('recommended_doctors')),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 250.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recomendExpertData.length,
                itemBuilder: (context, index) {
                  var item = recomendExpertData[index];
                  return CardRecomendedWidget(
                    item: item,
                  );
                }),
          ),
          SizedBox(
            height: 20.h,
          ),
          HomeTitleWidget(title: tr('online_experts')),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 90.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: onLineExpertData.length,
                itemBuilder: (context, index) {
                  var item = onLineExpertData[index];
                  return CardOnlineWidget(item: item);
                }),
          ),
        ],
      ),
    );
  }
}
