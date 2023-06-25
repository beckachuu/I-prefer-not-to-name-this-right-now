import 'package:flutter/foundation.dart' show immutable;
import 'package:nicetry/common/usecase/usecase.dart';
import 'package:nicetry/common/network/api_result.dart';
import 'package:nicetry/features/inbox/data/models/inbox.dart';
import 'package:nicetry/features/inbox/domain/repositories/inbox_repository.dart';

@immutable
class DeleteInboxUseCase implements UseCase<bool, DeleteInboxParams> {
  final InboxRepository inboxRepository;

  const DeleteInboxUseCase(this.inboxRepository);

  @override
  Future<ApiResult<bool>> call(DeleteInboxParams params) async {
    return await inboxRepository.deleteInbox(params.inbox);
  }
}

@immutable
class DeleteInboxParams {
  final Inbox inbox;

  const DeleteInboxParams(this.inbox);
}
