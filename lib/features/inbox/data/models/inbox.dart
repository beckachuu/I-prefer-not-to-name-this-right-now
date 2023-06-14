import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nicetry/features/inbox/domain/entities/inbox_entity.dart';

part 'inbox.g.dart';

@JsonSerializable()
class Inbox extends InboxEntity {
  Inbox({
    required super.id,
    required super.ownerId,
    required super.chatTitle,
    required super.lastMessage,
    required super.seenStatus,
    super.messages,
  });

  factory Inbox.fromJson(Map<String, dynamic> json) => _$InboxFromJson(json);
  Map<String, dynamic> toJson() => _$InboxToJson(this);
}
