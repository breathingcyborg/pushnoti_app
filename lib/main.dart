import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pushnoti_app/auth/blocs/user_info_cubit.dart';
import 'package:pushnoti_app/notifications/services/fcm_service.dart';
import 'package:pushnoti_app/di.dart';
import 'package:pushnoti_app/notifications/services/local_notifications_service.dart';
import 'package:pushnoti_app/services.dart';
import 'package:pushnoti_app/router.dart';
import 'package:pushnoti_app/theme.dart';
import 'firebase_options.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fl_query/fl_query.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  registerServices();
  await di.get<FCMService>().syncFCMToken();
  await QueryClient.initialize(cachePrefix: 'fl_query');
  di.get<LocalNotificationsService>().initialize();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return QueryClientProvider(
      child: BlocProvider(
        create: (BuildContext context) => UserInfoCubit(),
        lazy: false,
        child: MaterialApp.router(
          routerConfig: router,
          title: 'Flutter Demo',
          theme: buildThemeData(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
