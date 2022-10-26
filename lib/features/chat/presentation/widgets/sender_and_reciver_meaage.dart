import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/color_utils.dart';
import '../../../../core/utils/fonts_utils.dart';
import '../../../../core/utils/icons.dart';
import '../../../../core/utils/textstyle_utils.dart';
import '../../data/models/dummy_data_chat.dart';
import '../cubit/chat_cubit.dart';

class SenderAndReciverMessage extends StatefulWidget {
  final bool isMine;
  final bool isQuestion;
  final String message;
  final int type;
  final String? image;

  const SenderAndReciverMessage(
      {Key? key,
      required this.isMine,
      required this.message,
      required this.image,
      required this.type,
      required this.isQuestion})
      : super(key: key);

  @override
  State<SenderAndReciverMessage> createState() =>
      _SenderAndReciverMessageState();
}

class _SenderAndReciverMessageState extends State<SenderAndReciverMessage> {
  final List<int> value = [0, 8, 6, 7, 9, 8];
  bool selectedIndex = false;
  int? itemIndex;
  List selectedItems = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: widget.isMine == false
              ? MainAxisAlignment.start
              : MainAxisAlignment.end,
          children: [
            widget.isMine == false
                ? Container(
                    width: 38.w,
                    height: 38.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xff77838f)
                          .withOpacity(0.05999999865889549),
                    ),
                    child: Container(
                      width: 28.w,
                      height: 28.h,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(robotIcon),
                        ),
                      ),
                    ), // backgroundColor: Colors.red,
                  )
                : const SizedBox(),
            SizedBox(
              width: 5.w,
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width * 0.09,
                    maxWidth: MediaQuery.of(context).size.width * 0.7),
                margin: const EdgeInsets.symmetric(vertical: 4),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: widget.isMine == false
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff77838f)
                            .withOpacity(0.05999999865889549),
                      )
                    : BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            // bottomRight: Radius.circular(20),
                            20),
                        color: primary,
                      ),
                child: Text(
                  widget.message,
                  style: TextStyle(
                    fontSize: 15,
                    color: widget.isMine == false ? black : white,
                  ),
                ),
                //   ),
                // ),
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            widget.isMine == true
                ? const ImageIcon(
                    AssetImage(senCheckIcon),
                    color: primary, //NetworkImage
                    // backgroundColor: Colors.red,
                  )
                : const SizedBox(),
          ],
        ),
        (widget.isMine == false && widget.isQuestion == true)
            ? Column(
                children: [
                  BlocConsumer<ChatCubit, ChatState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return SizedBox(
                        height: radioButtonData.length * 50.h,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: radioButtonData.length,
                          itemBuilder: (context, index) => Row(
                            children: [
                              Checkbox(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                value: radioButtonData[index].selected,
                                onChanged: (state) => context
                                    .read<ChatCubit>()
                                    .setIsSelected(
                                        itemId: radioButtonData[index].value),
                                activeColor: primary,
                                checkColor: white,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.padded,
                              ),
                              Text(
                                tr(radioButtonData[index].text),
                                style: TexStyleUtils.textStyleColor(
                                  size: 16,
                                  fontWeight: FontWeightUtils.medium,
                                  color: blackLight,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  Text(
                    tr("done"),
                    style: TexStyleUtils.textStyleColor(
                      color: grey,
                      fontWeight: FontWeightUtils.regular,
                    ),
                  )
                ],
              )
            : const SizedBox()
      ],
    );
  }
}
