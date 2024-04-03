import 'dart:async';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:pushnoti_app/di.dart';
import 'package:pushnoti_app/notifications/apis/notifications_api.dart';
import 'package:pushnoti_app/notifications/models/users_notification.dart';

class UsersNotificationsRepo {
  static const int _limit = 10;
  static const int _fetchNewLimit = 30;

  // immutable list of emails
  IList<UsersNotification> notifications = IList();

  // has reached end of the list
  bool hasReachedEnd = false;

  // stream of list of notifications
  Stream<IList<UsersNotification>> get notiticationsStream => _notificationsStreamController.stream;

  // stream controller for emails list
  final StreamController<IList<UsersNotification>>
      _notificationsStreamController = StreamController.broadcast();

  // api
  final NotificationsApi _api;

  // loading initial emails
  bool _initialLoading = false;

  // loading older emails
  bool _oldLoading = false;

  // loading newer emails
  bool _newLoading = false;

  UsersNotificationsRepo({NotificationsApi? api})
    : _api = api ?? di.get<NotificationsApi>();

  fetchInitial() async {
    if (_initialLoading) {
      return;
    }

    _initialLoading = true;

    try {

      final response = await _api.getNotifications(_limit, null, null);

      // reached end of the list
      hasReachedEnd = response.length < _limit;

      // update notifications
      notifications = response.lock;

      // update stream
      _emit();

    } finally {
      _initialLoading = false;
    }
  }

  fetchOld() async {
    if (_oldLoading || _initialLoading || hasReachedEnd) {
      return;
    }

    _oldLoading = true;

    try {

      final response = await _api.getNotifications(
        _limit, 
        notifications.lastOrNull?.id, 
        notifications.lastOrNull?.createdAt,
      );

      // reached end of the list
      hasReachedEnd = response.length < _limit;

      // update notifications
      notifications = notifications.addAll(response);

      // update stream
      _emit();

    } finally {

      _oldLoading = false;

    }
  }

  fetchNew() async {
    if (_newLoading || _initialLoading) {
      return;
    }

    _newLoading = true;

    try {

      final response = await _api.getLatestNotifications(
        _fetchNewLimit, 
        notifications.firstOrNull?.id, 
        notifications.firstOrNull?.createdAt,
      );

      // update notifications
      notifications = notifications.insertAll(0, response.reversed);

      // update stream
      _emit();

    } finally {

      _newLoading = false;

    }
  }

  _emit() {
    _notificationsStreamController.add(notifications);
  }
}