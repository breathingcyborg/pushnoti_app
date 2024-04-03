import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pushnoti_app/common/widgets/user_notimail_share_widget.dart';
import 'package:pushnoti_app/notifications/blocs/users_notifications_cubit.dart';
import 'package:pushnoti_app/notifications/blocs/users_notifications_cubit_state.dart';
import 'package:pushnoti_app/notifications/widgets/users_notifications_list_item.dart';

class UsersNotificationsList extends StatelessWidget {
  const UsersNotificationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersNotificationsCubit, UsersNotificationsCubitState>(
      builder: (BuildContext context, UsersNotificationsCubitState state) {
        if (state.initialLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return _UsersNotificationsList();
      },
      buildWhen: (prev, current) => prev.initialLoading != current.initialLoading,
    ); 
  }
}

class _UsersNotificationsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersNotificationsCubit, UsersNotificationsCubitState>(
      builder: (context, state) {
        if (state.notifications.isEmpty) {
          return const EmptyNotimail();
        }
        return NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification notification) {
            var bottom = notification.metrics.maxScrollExtent;
            var current = notification.metrics.pixels;
            if (bottom - 100 < current && !state.hasReachedEnd) {
              context.read<UsersNotificationsCubit>().fetchOld();
            }
            return true;
          },
          child: RefreshIndicator(
            onRefresh: () async {  
              await context.read<UsersNotificationsCubit>().fetchNew();
            },
            child: ListView.builder(
              itemCount: state.notifications.length + 1,
              itemBuilder: (BuildContext context, int index) {  
                if (index < state.notifications.length) {
                  return UsersNotificationsListItem(
                    notification: state.notifications[index],
                  );
                }
                if (state.newLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return const SizedBox();
              },
            ),
          ),
        );
      }
    );
  }
}

class EmptyNotimail extends StatelessWidget {
  const EmptyNotimail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AspectRatio(
              aspectRatio: 371/170,
              child: Image.asset(
                'assets/images/empty_notimail.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Share your notimail', 
              style: Theme.of(context).textTheme.displaySmall, 
            ),
            const SizedBox(height: 16),
            Text(
              'Share your notimail with sites, apps or developers that you want to receive notifications from.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.5),
                height: 2
              ),
            ),
            const SizedBox(height: 16),
            const UserNotimailShareWidget(),
          ],
        ),
      ),
    );
  }
}
