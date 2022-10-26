import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/dummy_data_chat.dart';
import '../cubit/chat_cubit.dart';
import '../widgets/sender_and_reciver_meaage.dart';
import '../widgets/text_field_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<ChatCubit, ChatState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: messagesData.length,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (BuildContext context, int i) {
                    var item = messagesData[i];
                    return Column(
                      crossAxisAlignment: i.isOdd
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.end,
                      children: [
                        SenderAndReciverMessage(
                          isMine: item.isMe,
                          image: "",
                          type: 1,
                          isQuestion: item.isQuestion,
                          message: item.message,
                        )
                      ],
                    );
                  },
                ),
              ),
              TextFieldAddMessage(),
            ]),
          ),
        );
      },
    ));
  }
}
