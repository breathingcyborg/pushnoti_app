import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pushnoti_app/app/widgets/app-avatar.dart';
import 'package:pushnoti_app/common/date_utils.dart';
import 'package:pushnoti_app/notifications/models/users_notification.dart';
import 'package:pushnoti_app/notifications/pages/view_notification.dart';

class UsersNotificationsListItem extends StatelessWidget {
  final UsersNotification notification;

  const UsersNotificationsListItem({
    required this.notification,
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    var hasRead = notification.readAt != null;
    var fontWeight = !hasRead ? FontWeight.bold : FontWeight.normal;

    return InkWell(
      onTap: () {
        context.pushNamed(ViewNotification.routeName,
            pathParameters: {'notificationId': notification.id});
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            AppAvatar(displayName: notification.app.displayName),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(notification.app.displayName.toUpperCase(),
                          style: Theme.of(context).textTheme.labelMedium
                      ),
                      _buildDateWidget(context),
                    ],
                  ),
                  Text(
                    notification.title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: fontWeight),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDateWidget(BuildContext context) {
    var date = formatShortDate(notification.createdAt);
    return Text(
      date,
      style: Theme.of(context).textTheme.labelLarge
    );
  }
}
