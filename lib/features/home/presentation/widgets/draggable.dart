import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color_utils.dart';
import '../../../../../core/utils/fonts_utils.dart';
import '../../../../../core/utils/textstyle_utils.dart';
import '../../data/models/dummy_data_bottom_sheet.dart';

class DraggableSheet extends StatelessWidget {
  const DraggableSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.05,
      minChildSize: 0.05,
      maxChildSize: 0.8,
      builder: (BuildContext context, ScrollController scrollController) =>
          Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: white,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Container(
                  height: 10.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffd8d8d8)),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    controller: scrollController,
                    itemCount: categoryData.length,
                    itemBuilder: (context, index) {
                      var item = categoryData[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: ListTile(
                            title: Text(
                              item.name,
                              style: TexStyleUtils.textStyleColor(
                                color: blackLight,
                                fontWeight: FontWeightUtils.medium,
                              ),
                            ),
                            subtitle: Text(
                              "${item.countExperts} Experts",
                              style: TexStyleUtils.textStyleColor(
                                color: grey,
                                fontWeight: FontWeightUtils.regular,
                              ),
                            ),
                            leading: ImageIcon(
                              AssetImage(item.iconImage),
                              color: primary,
                            ),
                            trailing: const Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
