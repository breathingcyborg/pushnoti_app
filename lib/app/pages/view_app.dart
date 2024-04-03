import 'package:dio/dio.dart';
import 'package:fl_query/fl_query.dart';
import 'package:fl_query_hooks/fl_query_hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:pushnoti_app/api/api.dart';
import 'package:pushnoti_app/app/api/api.dart';
import 'package:pushnoti_app/app/models/app_protected.dart';
import 'package:pushnoti_app/app/pages/edit_app.dart';
import 'package:pushnoti_app/app/widgets/app-avatar.dart';
import 'package:pushnoti_app/common/date_utils.dart';
import 'package:pushnoti_app/common/widgets/copy_widget.dart';
import 'package:pushnoti_app/di.dart';
import 'package:intl/intl.dart';

class ViewApp extends HookWidget {
  static const String routeName = 'view_app';
  final String appId;

  const ViewApp({super.key, required this.appId});

  @override
  Widget build(BuildContext context) {
    var query = useQuery<AppProtected?, DioException>(
      'apps/$appId',
      () {
        var api = di.get<AppsApi>();
        return api.findById(appId);
      },
      initial: null,
    );

    var app = query.data;

    return Scaffold(
      appBar: _buildAppBar(context, query),
      body: _buildBody(context, query),
    );
  }

  AppBar _buildAppBar(
      BuildContext context, Query<AppProtected?, DioException> query) {
    var app = query.data;
    if (app == null) {
      return AppBar();
    }

    return AppBar(
      leadingWidth: 100,
      leading: Row(children: [
        const BackButton(),
        AppAvatar(displayName: app.displayName),
      ]),
      title: Text(app.displayName, overflow: TextOverflow.ellipsis),
      titleSpacing: 0,
      actions: [
        IconButton(
          onPressed: () async {
            await context.pushNamed(EditAppScreen.routeName,
                pathParameters: {'appId': appId});
            query.refresh();
          },
          icon: const Icon(Icons.edit_note),
        )
      ],
    );
  }

  Widget _buildBody(
      BuildContext context, Query<AppProtected?, DioException> query) {
    var app = query.data;
    if (query.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (query.hasError) {
      return Text(getErrorMessage(query.error!));
    }
    if (app == null) {
      return const Text('App not found');
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Display name',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 8),
          Text(
            app.displayName,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const Divider(height: 32),
          Text(
            'Api key',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 8),
          CopyWidget(text: app.apiKey),
          const Divider(height: 32),
          Text(
            'Created At',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Text(
            formatDate(app.createdAt),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
