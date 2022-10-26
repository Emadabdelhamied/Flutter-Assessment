part of 'chat_cubit.dart';

abstract class ChatState extends Equatable {
  const ChatState();

  @override
  List<Object> get props => [];
}

class ChatInitial extends ChatState {}

class ToggleCheck extends ChatState {}

class SetCheck extends ChatState {}

class SendMessage extends ChatState {}
