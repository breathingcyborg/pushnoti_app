import 'package:dio/dio.dart';
import 'package:fl_query/fl_query.dart';
import 'package:fl_query_hooks/fl_query_hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:pushnoti_app/api/api.dart';
import 'package:pushnoti_app/app/api/api.dart';
import 'package:pushnoti_app/app/models/app_protected.dart';
import 'package:pushnoti_app/app/pages/view_app.dart';
import 'package:pushnoti_app/app/widgets/app-avatar.dart';
import 'package:pushnoti_app/app/widgets/no_apps_widget.dart';
import 'package:pushnoti_app/di.dart';

class AppsListWidget extends HookWidget {
  const AppsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final query = useQuery<List<AppProtected>, DioException>(
      'apps',
      () => di.get<AppsApi>().index(),
      initial: [],
      jsonConfig: JsonConfig(
          toJson: (list) => {'data': list.map((e) => e.toJson()).toList()},
          fromJson: (value) {
            return (value['data'] as List<dynamic>)
              .map((json) => AppProtected.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json)))
              .toList();
          }),
    );

    if (query.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (query.hasError) {
      return Text(getErrorMessage(query.error!));
    }

    if (query.data != null && query.data!.isEmpty) {
      return const NoAppsWidget();
    }

    return RefreshIndicator(
      onRefresh: () {
        return query.refresh();
      },
      child: ListView.builder(
        itemCount: query.data?.length,
        itemBuilder: (BuildContext context, int index) {
          var app = query.data![index];
          return ListTile(
            title: Text(app.displayName),
            leading: AppAvatar(displayName:  app.displayName),
            trailing: const Icon(
              Icons.chevron_right,
            ),
            onTap: () {
              context.pushNamed(
                ViewApp.routeName, 
                pathParameters: { 'appId': app.id }
              );
            },
          );
        },
      ),
    );
  }
}