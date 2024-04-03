import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pushnoti_app/auth/apis/api.dart';
import 'package:pushnoti_app/auth/services/firebase_auth_service.dart';
import 'package:pushnoti_app/di.dart';
import 'package:pushnoti_app/home/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  static const routeName = 'login';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future<void> _handleLoginWithGoogleButtonPress(BuildContext context) async {
    await di.get<FirebaseAuthService>().loginWithGoogle();
    await di.get<AuthApi>().firebaseSync();

    if (context.mounted) {
      context.goNamed(HomePage.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'NotiMail',
                      style: Theme.of(context).textTheme.displayLarge,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Send notifications without building an app.',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.5)
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              FilledButton.icon(
                icon: Image.asset(
                  'assets/images/google_logo.png',
                  width: 24,
                  height: 24,
                ),
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 16)),
                  textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 16)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  _handleLoginWithGoogleButtonPress(context);
                },
                label: const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("Login With Google"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
