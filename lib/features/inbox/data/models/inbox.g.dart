// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbox.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Inbox _$InboxFromJson(Map<String, dynamic> json) => Inbox(
      id: json['id'] as int,
      ownerId: json['ownerId'] as int,
      chatTitle: json['chat_title'] as String,
      lastMessage: DateTime.parse(json['last_message'] as String),
      seenStatus: $enumDecode(_$SeenStatusEnumMap, json['seen_status']),
      messages: json['messages'] as List<dynamic>?,
    );

Map<String, dynamic> _$InboxToJson(Inbox instance) => <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'chat_title': instance.chatTitle,
      'last_message': instance.lastMessage.toIso8601String(),
      'seen_status': _$SeenStatusEnumMap[instance.seenStatus]!,
      'messages': instance.messages,
    };

const _$SeenStatusEnumMap = {
  SeenStatus.read: 'read',
  SeenStatus.unread: 'unread',
};
