import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/color_utils.dart';
import '../../../../core/utils/fonts_utils.dart';
import '../../../../core/utils/textstyle_utils.dart';
import '../../data/models/dummy_data_home.dart';
import '../cubit/home_cubit.dart';

class CardRecomendedWidget extends StatelessWidget {
  const CardRecomendedWidget({super.key, required this.item});
  final RecomendExpert item;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.center,
        // color: Colors.red,
        // padding: const EdgeInsets.all(8),
        height: 250.h,
        width: 175.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150.h,
              width: 185.w,
              child: Image.asset(
                item.image!,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star,
                        color: yellow,
                      ),
                      Text(
                        "(${item.rate})",
                        textAlign: TextAlign.center,
                        style: TexStyleUtils.textStyleColor(
                            size: 12,
                            color: grey,
                            fontWeight: FontWeightUtils.regular),
                      ),
                      const Spacer(),
                      BlocProvider(
                        create: (context) => HomeCubit(),
                        child: BlocConsumer<HomeCubit, HomeState>(
                          listener: (context, state) {},
                          builder: (context, state) {
                            return IconButton(
                              onPressed: () {
                                context
                                    .read<HomeCubit>()
                                    .setIsFavorite(itemId: item.id!);
                              },
                              icon: Icon(
                                item.isFavorite == true
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: grey,
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  Text(
                    item.name!,
                    style: TexStyleUtils.textStyleColor(
                      color: blackLight,
                      fontWeight: FontWeightUtils.medium,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    item.category!,
                    style: TexStyleUtils.textStyleColor(
                      color: grey,
                      fontWeight: FontWeightUtils.medium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
