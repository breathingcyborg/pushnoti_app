import 'package:dio/dio.dart';
import 'package:fl_query_hooks/fl_query_hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:pushnoti_app/api/api.dart';
import 'package:pushnoti_app/app/api/api.dart';
import 'package:pushnoti_app/app/pages/view_app.dart';
import 'package:pushnoti_app/common/dtos/generic_str_id_response.dart';
import 'package:pushnoti_app/di.dart';

class CreateAppScreen extends HookWidget {

  static const routeName = 'create-app';

  const CreateAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mutation =
        useMutation<GenericStrIdResponse, DioException, CreateAppDTO, dynamic>(
      'create-app',
      (variables) {
        return di.get<AppsApi>().createApp(variables);
      },
      refreshQueries: ['apps'],
      onData: (resp, _) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('App Created')));
        context.replaceNamed(
          ViewApp.routeName,
          pathParameters: { 'appId': resp.id }
        );
      },
    );

    var formKey = useMemoized(
      () => GlobalKey<FormState>(), 
      const []
    );

    var displayNameController = useTextEditingController();

    var onSubmit = useCallback(() async {
      if (mutation.isMutating) {
        return;
      }
      var valid = formKey.currentState?.validate() ?? false;
      if (!valid) {
        return;
      }
      formKey.currentState?.save();
      var request = CreateAppDTO(
        displayName: displayNameController.text
      );
      await mutation.mutate(request);
    }, [mutation, displayNameController, formKey]);

    return Scaffold(
      appBar: AppBar(title: const Text('Create App')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (mutation.hasError) Text(getErrorMessage(mutation.error!)),
                TextFormField(
                  controller: displayNameController,
                  decoration: const InputDecoration(
                    labelText: 'App Name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter display name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: onSubmit,
                  style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 16)),
                    textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 16)),
                  ),
                  child: mutation.isMutating
                    ? SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    )
                    : const Text('Create App'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}