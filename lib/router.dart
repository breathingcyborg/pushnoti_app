import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pushnoti_app/app/pages/create_app.dart';
import 'package:pushnoti_app/app/pages/edit_app.dart';
import 'package:pushnoti_app/app/pages/view_app.dart';
import 'package:pushnoti_app/auth/services/firebase_auth_service.dart';
import 'package:pushnoti_app/di.dart';
import 'package:pushnoti_app/home/pages/home_page.dart';
import 'package:pushnoti_app/auth/pages/login_page.dart';
import 'package:pushnoti_app/notifications/pages/view_notification.dart';
import 'package:pushnoti_app/profile/pages/pick_notimail_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomePage.routeName,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/login',
      name: LoginPage.routeName,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/pick-notimail',
      name: PickNotimailPage.routeName,
      builder: (context, state) => const PickNotimailPage(),
    ),
    GoRoute(
      path: '/apps/create',
      name: CreateAppScreen.routeName,
      builder: (context, state) => const CreateAppScreen(),
    ),
    GoRoute(
      path: '/apps/:appId',
      name: ViewApp.routeName,
      builder: (context, state) =>  ViewApp(
        appId: state.pathParameters['appId']!,
      ),
    ),
    GoRoute(
      path: '/apps/:appId/edit',
      name: EditAppScreen.routeName,
      builder: (context, state) =>  EditAppScreen(
        appId: state.pathParameters['appId']!,
      ),
    ),
    GoRoute(
      path: '/notifications/:notificationId',
      name: ViewNotification.routeName,
      builder: (context, state) =>  ViewNotification(
        notificationId: state.pathParameters['notificationId']!,
      ),
    ),
  ],
  redirect: routerRedirect,
);

FutureOr<String?> routerRedirect(
    BuildContext context, GoRouterState state) async {
  // no auth required
  var requiresAuth = state.name != LoginPage.routeName;
  if (!requiresAuth) {
    return null;
  }

  // Dont read value from UserInfoCubit because it takes time to initialize
  // before its initialized it returns null

  var user = di.get<FirebaseAuthService>().getCurrentUser();
  var notimail =  await di.get<FirebaseAuthService>().getNotimail();

  // redirect to login
  var isLoggedIn = user != null;
  if (!isLoggedIn) {
    return router.namedLocation(LoginPage.routeName);
  }

  // redirect to page to pick notimail
  var hasNotimail = notimail != null;

  var isPickNotimailPage = state.name == PickNotimailPage.routeName;
  if (!hasNotimail && context.mounted && !isPickNotimailPage) {
    return router.namedLocation(PickNotimailPage.routeName);
  }

  return null;
}
