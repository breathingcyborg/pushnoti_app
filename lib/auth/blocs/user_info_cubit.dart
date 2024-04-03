import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pushnoti_app/auth/services/firebase_auth_service.dart';
import 'package:pushnoti_app/di.dart';
import 'user_info_state.dart';

class UserInfoCubit extends Cubit<UserInfoState> {
  final FirebaseAuthService _authService;
  late final StreamSubscription<User?> _subscription;
  
  UserInfoCubit({ FirebaseAuthService? authService}) : 
    _authService = authService ?? di.get<FirebaseAuthService>(),
    super(const UserInfoState(currentUser: null, currentUserNotimail: null)) {
      listen();
      updateUser();
  }

  void listen() {
    _subscription = _authService.authStateChanges().listen((event) {
      updateUser();
    });
  }

  Future<void> updateUser() async {
    final currentUser = _authService.getCurrentUser();
    final customClaims = await _authService.getCustomClaims();

    if (currentUser != null && customClaims != null) {
      final currentUserNotimail = customClaims['notimail'];
      emit(UserInfoState(
        currentUser: currentUser,
        currentUserNotimail: currentUserNotimail,
      ));
    } else {
      emit(const UserInfoState(currentUser: null, currentUserNotimail: null));
    }
  }

  @override
  Future<void> close() async {
    _subscription.cancel();
    return super.close();
  }
}