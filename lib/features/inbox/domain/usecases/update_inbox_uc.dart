import 'package:flutter/foundation.dart' show immutable;
import 'package:nicetry/common/usecase/usecase.dart';
import 'package:nicetry/common/network/api_result.dart';
import 'package:nicetry/features/inbox/data/models/inbox.dart';
import 'package:nicetry/features/inbox/domain/repositories/inbox_repository.dart';

@immutable
class UpdateInboxUseCase implements UseCase<bool, UpdateInboxParams> {
  final InboxRepository inboxRepository;

  const UpdateInboxUseCase(this.inboxRepository);

  @override
  Future<ApiResult<bool>> call(UpdateInboxParams params) async {
    return await inboxRepository.updateInbox(params.inbox);
  }
}

@immutable
class UpdateInboxParams {
  final Inbox inbox;

  const UpdateInboxParams(this.inbox);
}
