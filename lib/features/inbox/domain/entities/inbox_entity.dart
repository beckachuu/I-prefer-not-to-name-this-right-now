import 'package:freezed_annotation/freezed_annotation.dart';

enum SeenStatus {
  read(true),
  unread(false);

  final bool value;

  const SeenStatus(this.value);
}

class InboxEntity {
  InboxEntity({
    required this.id,
    required this.ownerId,
    required this.chatTitle,
    required this.lastMessage,
    required this.seenStatus,
    this.messages,
  });

  final int id;
  final int ownerId;
  @JsonKey(name: "chat_title")
  final String chatTitle;
  @JsonKey(name: "last_message")
  final DateTime lastMessage;
  @JsonKey(name: "seen_status")
  final SeenStatus seenStatus;
  List<dynamic>? messages;
}
