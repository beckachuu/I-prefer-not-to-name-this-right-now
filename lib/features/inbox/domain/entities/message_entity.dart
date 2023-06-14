import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
@JsonSerializable()
class MessageEntity {
  const MessageEntity({
    required this.id,
    required this.ownerId,
    required this.recieverId,
    required this.sentTime,
    required this.recievedTime,
    required this.messageContent,
  });

  final int id;
  @JsonKey(name: "owner_id")
  final int ownerId;
  @JsonKey(name: "reciever_id")
  final int recieverId;
  @JsonKey(name: "sent_time")
  final DateTime sentTime;
  @JsonKey(name: "recieved_time")
  final DateTime recievedTime;
  @JsonKey(name: "message_content")
  final String messageContent;
}
