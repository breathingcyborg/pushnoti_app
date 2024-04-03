import 'package:dio/dio.dart';
import 'package:fl_query/fl_query.dart';
import 'package:fl_query_hooks/fl_query_hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:pushnoti_app/api/api.dart';
import 'package:pushnoti_app/app/widgets/app-avatar.dart';
import 'package:pushnoti_app/common/date_utils.dart';
import 'package:pushnoti_app/di.dart';
import 'package:pushnoti_app/notifications/apis/notifications_api.dart';
import 'package:pushnoti_app/notifications/models/users_notification.dart';

class ViewNotification extends HookWidget {
  static const String routeName = 'view_notification';
  final String notificationId;

  const ViewNotification({super.key, required this.notificationId});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var query = useQuery<UsersNotification?, DioException>(
      'notifications/$notificationId',
      () {
        var api = di.get<NotificationsApi>();
        return api.findById(notificationId);
      },
      initial: null,
    );

    var mutation = useMutation<void, void, String, void>('/notifications/$notificationId/read-receipt', (notificationId) {
        var api = di.get<NotificationsApi>();
        return api.markRead(notificationId);
    });

    useEffect(() {
      Future.microtask(() => mutation.mutate(notificationId));
      return;
    }, [mutation, notificationId]);

    return Scaffold(
      appBar: _buildAppBar(context, query),
      body: _buildBody(context, query),
    );
  }

  AppBar _buildAppBar(BuildContext context, Query<UsersNotification?, DioException> query) {
    if (!query.hasData) {
      return AppBar();
    }
    var notification = query.data!;
    var app = notification.app;
    return AppBar(
      leadingWidth: 100,
      leading: Row(
        children: [
          const BackButton(),
          AppAvatar(displayName: app.displayName),
        ]
      ),
      title: Text(app.displayName, overflow: TextOverflow.ellipsis),
      titleSpacing: 0,
    );
  }

  Widget _buildBody(BuildContext context, Query<UsersNotification?, DioException> query) {
    var notification = query.data;
    if (query.isLoading) {
      return const Center(child: CircularProgressIndicator());
    } 
    if (query.hasError) {
      return Text(getErrorMessage(query.error!));
    }
    if (notification == null) {
      return const Text('Notification not found');
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Text(
              notification.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
             Opacity(
              opacity: 0.5,
              child: Row(
                children: [
                  const Icon(Icons.timer_outlined, size: 16),
                  const SizedBox(width: 8),
                  Text(
                    formatDateTime(notification.createdAt),
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            if (notification.image != null) ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Image.network(notification.image!)
            ),
            if (notification.image != null) const SizedBox(height: 16),
            if (notification.message != null) Text(
              notification.message!,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
