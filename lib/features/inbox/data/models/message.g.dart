// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      id: json['id'] as int,
      ownerId: json['owner_id'] as int,
      recieverId: json['reciever_id'] as int,
      sentTime: DateTime.parse(json['sent_time'] as String),
      recievedTime: DateTime.parse(json['recieved_time'] as String),
      messageContent: json['message_content'] as String,
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.ownerId,
      'reciever_id': instance.recieverId,
      'sent_time': instance.sentTime.toIso8601String(),
      'recieved_time': instance.recievedTime.toIso8601String(),
      'message_content': instance.messageContent,
    };
