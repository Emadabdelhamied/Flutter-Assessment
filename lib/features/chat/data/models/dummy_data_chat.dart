class ChatMessages {
  final bool isMe;
  final bool isQuestion;
  final String message;

  ChatMessages({
    required this.isMe,
    required this.message,
    required this.isQuestion,
  });
}

List<ChatMessages> messagesData = [
  ChatMessages(
    isMe: false,
    message: "Hi, Whats You Name Firstname?",
    isQuestion: false,
  ),
  ChatMessages(
    isMe: true,
    message: "Emad",
    isQuestion: false,
  ),
  ChatMessages(
      isMe: false, message: "Ok, Emad Whats Your Lastname?", isQuestion: false),
  ChatMessages(
    isMe: true,
    message: "Abd El-Hamied",
    isQuestion: false,
  ),
  ChatMessages(
    isMe: false,
    message: "Eng Ahmed Abd El-Hamied, What's your Title? ",
    isQuestion: false,
  ),
  ChatMessages(
    isMe: true,
    message: "Flutter Developer",
    isQuestion: false,
  ),
  ChatMessages(
    isMe: false,
    message: "What Categories you will need expert In?",
    isQuestion: true,
  ),
];

class RadioButtonClass {
  final int value;
  final String text;
  bool selected;

  RadioButtonClass(
      {required this.value, required this.text, required this.selected});
}

List<RadioButtonClass> radioButtonData = [
  RadioButtonClass(
    value: 0,
    text: "security",
    selected: false,
  ),
  RadioButtonClass(
    value: 1,
    text: "supply_chain",
    selected: false,
  ),
  RadioButtonClass(
    value: 2,
    text: "it",
    selected: false,
  ),
  RadioButtonClass(
    value: 3,
    text: "hr",
    selected: false,
  ),
  RadioButtonClass(
    value: 4,
    text: "br",
    selected: false,
  ),
];
