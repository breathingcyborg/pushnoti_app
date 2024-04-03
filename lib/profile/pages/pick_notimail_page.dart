import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pushnoti_app/api/api.dart';
import 'package:pushnoti_app/auth/blocs/user_info_cubit.dart';
import 'package:pushnoti_app/common/constants.dart';
import 'package:pushnoti_app/auth/services/firebase_auth_service.dart';
import 'package:pushnoti_app/di.dart';
import 'package:pushnoti_app/home/pages/home_page.dart';
import 'package:pushnoti_app/profile/apis/api.dart';

class PickNotimailPage extends StatefulWidget {
  static const routeName = 'pick_notimail';

  const PickNotimailPage({super.key});

  @override
  State<PickNotimailPage> createState() => _PickNotimailPageState();
}

class _PickNotimailPageState extends State<PickNotimailPage> {
  final _formKey = GlobalKey<FormState>();
  final _notimailController = TextEditingController();
  final _profileApi = di.get<ProfileApi>();

  _onSubmit(BuildContext context) async {
    // Validate the form
    var valid = _formKey.currentState?.validate() ?? false;
    if (!valid) {
      return;
    }

    // append domain to create notimail
    var notimail = '${_notimailController.text}@$notimailDomain';
 
    try {

      // call api to update users notimail
      await _profileApi.setNotimail(SetNotimailRequest(notimail: notimail));

      // server sets notimail as 'custom claim' in firebase
      // we refetch firebase token in order to get that 'custom claim'.
      await di.get<FirebaseAuthService>().getIdToken(true);

      // navigate to home page
      if (context.mounted) {
        await context.read<UserInfoCubit>().updateUser();
      }
  
      if (context.mounted) {
        context.goNamed(HomePage.routeName);
      }
  
    } on DioException catch (e) {
      
      // show api / network error message
      var message = getErrorMessage(e);
      if (context.mounted) {
        var snackBar = SnackBar(content: Text(message));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }

    } catch(e) {

      // show error message
      if (context.mounted) {
        const snackBar = SnackBar(content: Text('Something Went Wrong'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Pick Your Notimail',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(height: 20),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      'Notimail is email for notifications. You can share your notimail with other apps to send notifications to you.',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  const SizedBox(height: 40),
                  TextFormField(
                    decoration: const InputDecoration(suffixText: '@$notimailDomain'),
                    controller: _notimailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select notimail';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 20),
                      ),
                    ),
                    onPressed: () => _onSubmit(context),
                    child: const Text('Continue'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
