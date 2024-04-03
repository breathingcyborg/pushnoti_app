import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pushnoti_app/account/widgets/account_page_content_widget.dart';
import 'package:pushnoti_app/app/pages/create_app.dart';
import 'package:pushnoti_app/app/widgets/apps-list.widget.dart';
import 'package:pushnoti_app/common/widgets/permission_widget.dart';
import 'package:pushnoti_app/notifications/widgets/notifications_listener_widget.dart';
import 'package:pushnoti_app/notifications/blocs/users_notifications_cubit.dart';
import 'package:pushnoti_app/notifications/widgets/users_notifications_list.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PermissionWidget(
      child: NotificationsListenerWidget(
        child: Scaffold(
          appBar: AppBar(
            title: Text([
              "Notifications",
              "Apps",
              "Account",
            ][_currentIndex]),
            // actions: [
            //   IconButton(
            //     tooltip: 'Logout',
            //     onPressed: () async {
            //       await di.get<FirebaseAuthService>().logout();
            //       if (context.mounted) {
            //         GoRouter.of(context).goNamed(LoginPage.routeName);
            //       }
            //     },
            //     icon: const Icon(Icons.logout),
            //   ),
            //   IconButton(
            //     tooltip: 'Set Notimail',
            //     onPressed: () async {
            //       if (context.mounted) {
            //         GoRouter.of(context).goNamed(PickNotimailPage.routeName);
            //       }
            //     },
            //     icon: const Icon(Icons.email),
            //   ),
            // ],
          ),
          body: [
            BlocProvider<UsersNotificationsCubit>(
                create: (BuildContext context) => UsersNotificationsCubit(),
                child: const UsersNotificationsList(),
            ),
            const AppsListWidget(),
            const AccountPageContentWidget(),
          ][_currentIndex],
          floatingActionButton: _buildFab(context),
          bottomNavigationBar: NavigationBar(
            selectedIndex: _currentIndex,
            onDestinationSelected: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.notifications),
                label: 'Notifications',
              ),
              NavigationDestination(
                icon: Icon(Icons.apps),
                label: 'Apps',
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                label: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildFab(BuildContext context) {
    if (_currentIndex == 1) {
      return FloatingActionButton(
        onPressed: () {
          if (context.mounted) {
            context.pushNamed(CreateAppScreen.routeName);
          }
        },
        child: const Icon(Icons.add),
      );
    }
    return null;
  }
}
