import 'dart:async';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:pushnoti_app/di.dart';
import 'package:pushnoti_app/notifications/blocs/users_notifications_cubit_state.dart';
import 'package:bloc/bloc.dart';
import 'package:pushnoti_app/notifications/models/users_notification.dart';
import 'package:pushnoti_app/notifications/repos/users_notifications_repo.dart';
import 'package:pushnoti_app/notifications/services/fcm_service.dart';

class UsersNotificationsCubit extends Cubit<UsersNotificationsCubitState> {

  final UsersNotificationsRepo _repo;
  late final StreamSubscription<IList<UsersNotification>> _repoSubscription;
  late final StreamSubscription<RemoteMessage> _remoteMessageSubscription;

  UsersNotificationsCubit({UsersNotificationsRepo? repo}) : 
    _repo = repo ?? di.get<UsersNotificationsRepo>(),
    super(UsersNotificationsCubitState.initial()) {
      _subscribe();
      fetchInitial();
  }

  fetchInitial() async {
    if (state.initialLoading) {
      return;
    }
  
    try {
      emit(state.copyWith(initialLoading: true));
  
      await _repo.fetchInitial();
  
      emit(state.copyWith(
        hasReachedEnd: _repo.hasReachedEnd,
      ));
  
    } finally {

      emit(state.copyWith(
        initialLoading: false,
      ));
  
    }
  }

  fetchNew() async {
    if (state.initialLoading || state.newLoading) {
      return;
    }
  
    try {
      emit(state.copyWith(newLoading: true));
  
      await _repo.fetchNew();
  
      emit(state.copyWith(
        hasReachedEnd: _repo.hasReachedEnd,
      ));
  
    } finally {

      emit(state.copyWith(
        newLoading: false,
      ));
  
    }
  }

  fetchOld() async {
    if (state.initialLoading || state.oldLoading || state.hasReachedEnd) {
      return;
    }
  
    try {
      emit(state.copyWith(oldLoading: true));

      await _repo.fetchOld();
  
      emit(state.copyWith(
        hasReachedEnd: _repo.hasReachedEnd,
      ));
  
    } finally {

      emit(state.copyWith(
        oldLoading: false,
      ));
  
    }
  }
  
  _subscribe() {
    _repoSubscription = _repo.notiticationsStream.listen((notifications) {
      emit(state.copyWith(notifications: notifications));
    });

    // fetch latest notifications
    // when new firebase notificiation arrives
    _remoteMessageSubscription = di.get<FCMService>().onForegroundMessage.listen((event) {
      fetchNew();
    });
  }

  @override
  Future<void> close() async {
    _repoSubscription.cancel();
    _remoteMessageSubscription.cancel();
    return super.close();
  }
}