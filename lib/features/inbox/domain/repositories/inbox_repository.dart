/* 
  Define an interface for accessing and manipulating data that's
  independent of any specific data storage technology.
  This allows you to change the underlying data storage technology without
  affecting the *core business logic* of your application
*/

import 'package:nicetry/common/network/api_result.dart';
import 'package:nicetry/features/inbox/data/models/inbox.dart';

abstract class InboxRepository {
  Future<ApiResult<List<Inbox>>> getInboxes(int userId);

  Future<ApiResult<bool>> createInbox(Inbox inbox);

  Future<ApiResult<bool>> updateInbox(Inbox inbox);

  Future<ApiResult<bool>> deleteInbox(Inbox inbox);
}
