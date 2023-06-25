import 'package:flutter/foundation.dart' show immutable;
import 'package:nicetry/common/usecase/usecase.dart';
import 'package:nicetry/common/network/api_result.dart';
import 'package:nicetry/features/inbox/data/models/inbox.dart';
import 'package:nicetry/features/inbox/domain/repositories/inbox_repository.dart';

@immutable
class GetInboxUseCase implements UseCase<List<Inbox>, GetInboxParams> {
  final InboxRepository inboxRepository;

  const GetInboxUseCase(this.inboxRepository);

  @override
  Future<ApiResult<List<Inbox>>> call(GetInboxParams params) async {
    return await inboxRepository.getInboxes(params.userId);
  }
}

@immutable
class GetInboxParams {
  final int userId;

  const GetInboxParams({required this.userId});
}
