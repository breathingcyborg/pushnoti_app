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
import 'package:pushnoti_app/di.dart';

class EditAppScreen extends HookWidget {
  static const routeName = 'edit-app';
  final String appId;

  const EditAppScreen({super.key, required this.appId});

  @override
  Widget build(BuildContext context) {
    final client = useQueryClient();

    var query = useQuery<AppProtected?, DioException>(
      'apps/$appId',
      () {
        var api = di.get<AppsApi>();
        return api.findById(appId);
      },
      initial: null,
    );

    var mutation = useMutation<void, DioException, EditAppDTO, dynamic>(
      'edit-app',
      (variables) {
        return di.get<AppsApi>().editApp(appId, variables);
      },
      onData: (resp, _) async {

        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('App Edited')));

        await client.refreshQueries(['apps', 'apps/$appId']);

        if (context.mounted) {
          context.pop();
        }
      },
    );

    var formKey = useMemoized(() => GlobalKey<FormState>(), const []);

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
      var request = EditAppDTO(displayName: displayNameController.text);
      await mutation.mutate(request);
    }, [mutation, displayNameController, formKey]);



    useEffect(() {
      displayNameController.text = query.data?.displayName ?? displayNameController.text;
      return null;
    }, [ query.data?.displayName, displayNameController ]);

    // loading app or error
    if (query.isLoading || query.hasError || query.data == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Edit App')),
        body: _buildQueryUi(query),
      );
    }
    
    return Scaffold(
      appBar: AppBar(title: const Text('Edit App')),
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
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 16)),
                    textStyle:
                        MaterialStatePropertyAll(TextStyle(fontSize: 16)),
                  ),
                  child: mutation.isMutating
                      ? SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        )
                      : const Text('Submit'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQueryUi(Query<AppProtected?, DioException> query) {
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
    return const SizedBox();
  }
}

// class CreateAppScreen extends StatefulWidget {
//   static const String routeName = 'create_app';

//   const CreateAppScreen({super.key});

//   @override
//   State<CreateAppScreen> createState() => _CreateAppScreenState();
// }

// class _CreateAppScreenState extends State<CreateAppScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Create App'),
//       ),
//     );
//   }
// }
