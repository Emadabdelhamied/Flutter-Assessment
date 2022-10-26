import 'dart:developer';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/color_utils.dart';
import '../../../../core/utils/icons.dart';
import '../../data/models/dummy_data_chat.dart';
import '../cubit/chat_cubit.dart';

class TextFieldAddMessage extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  TextFieldAddMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextFormField(
                controller: controller,
                keyboardType: TextInputType.text,
                autocorrect: true,
                style: const TextStyle(
                  fontSize: 14,
                  color: blackLight,
                ),
                decoration: InputDecoration(
                  filled: true,
                  border: InputBorder.none,
                  hintText: tr('type'),
                  contentPadding: const EdgeInsets.all(8),
                  hintStyle: const TextStyle(
                      color: blackLight,
                      fontSize: 14,
                      fontFamily: AppStrings.fontFamily),
                  prefixIcon: const ImageIcon(
                    AssetImage(langIcon),
                    color: blackLight,
                  ),
                  suffixIcon: const ImageIcon(
                    AssetImage(voiceIcon),
                    color: blackLight,
                  ),
                ),
              ),
            ),
          ),
          BlocConsumer<ChatCubit, ChatState>(
            listener: (context, state) {},
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  if (controller.text.isNotEmpty) {
                    context
                        .read<ChatCubit>()
                        .sendMessage(message: controller.text);
                  }
                  controller.clear();
                  log(messagesData.length.toString());
                },
                icon: const ImageIcon(
                  AssetImage(sendIcon),
                  color: primary,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
