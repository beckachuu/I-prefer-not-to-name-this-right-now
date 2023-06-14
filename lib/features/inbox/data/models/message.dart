import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nicetry/features/inbox/domain/entities/message_entity.dart';

part 'message.g.dart';

@immutable
@JsonSerializable()
class Message extends MessageEntity {
  const Message({
    required super.id,
    required super.ownerId,
    required super.recieverId,
    required super.sentTime,
    required super.recievedTime,
    required super.messageContent,
  });

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
