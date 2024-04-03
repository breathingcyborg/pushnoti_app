import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pushnoti_app/auth/blocs/user_info_cubit.dart';
import 'package:pushnoti_app/auth/blocs/user_info_state.dart';
import 'package:pushnoti_app/common/widgets/copy_widget.dart';

class UserNotimailShareWidget extends StatelessWidget {

  const UserNotimailShareWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserInfoCubit, UserInfoState>(builder: (context, state) {
      if (state.currentUser == null || state.currentUserNotimail == null) {
        return const SizedBox();
      }
      return CopyWidget(text: state.currentUserNotimail!);
    });
  }

}
// initialLoading (show loading)
// show list
// items
// lastItem (loader)
// onReachend (fetch old)  @override
