import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pushnoti_app/auth/pages/login_page.dart';
import 'package:pushnoti_app/auth/services/firebase_auth_service.dart';
import 'package:pushnoti_app/common/widgets/user_notimail_share_widget.dart';
import 'package:pushnoti_app/di.dart';

class AccountPageContentWidget extends StatelessWidget {

  const AccountPageContentWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            const UserNotimailShareWidget(),
            const SizedBox(height: 16),
            ListTile(
              title: const Text('Logout'),
              trailing: const Icon(
                Icons.logout,
              ),
              onTap: () async {
                await di.get<FirebaseAuthService>().logout();
                if (context.mounted) {
                  GoRouter.of(context).goNamed(LoginPage.routeName);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}