import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/dummy_data_chat.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  void sendMessage({required String message}) {
    messagesData.add(
      ChatMessages(
        isMe: true,
        message: message,
        isQuestion: false,
      ),
    );
    emit(SendMessage());
    emit(ChatInitial());
  }

  void setIsSelected({required int itemId}) {
    emit(SetCheck());
    var existingIndex =
        radioButtonData.indexWhere((element) => element.value == itemId);
    if (radioButtonData[existingIndex].selected == false) {
      radioButtonData[existingIndex].selected = true;
      emit(ToggleCheck());
    } else {
      radioButtonData[existingIndex].selected = false;
      emit(ToggleCheck());
    }
  }
}
