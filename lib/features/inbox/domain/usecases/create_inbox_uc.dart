import 'package:flutter/foundation.dart' show immutable;
import 'package:nicetry/common/usecase/usecase.dart';
import 'package:nicetry/common/network/api_result.dart';
import 'package:nicetry/features/inbox/data/models/inbox.dart';
import 'package:nicetry/features/inbox/domain/repositories/inbox_repository.dart';

@immutable
class CreateInboxUseCase implements UseCase<bool, CreateInboxParams> {
  final InboxRepository inboxRepository;

  const CreateInboxUseCase(this.inboxRepository);

  @override
  Future<ApiResult<bool>> call(CreateInboxParams params) async {
    return await inboxRepository.createInbox(params.inbox);
  }
}

@immutable
class CreateInboxParams {
  final Inbox inbox;

  const CreateInboxParams(this.inbox);
}
