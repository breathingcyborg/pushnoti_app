
import 'package:dio/dio.dart';
import 'package:pushnoti_app/di.dart';
import 'package:pushnoti_app/notifications/models/users_notification.dart';
import 'package:retrofit/retrofit.dart';

part 'notifications_api.g.dart';

@RestApi(baseUrl: '/notifications')
abstract class NotificationsApi {
  factory NotificationsApi({Dio? dio}) {
    return _NotificationsApi(dio ?? di.get<Dio>());
  }

  @GET('/')
  Future<List<UsersNotification>> getNotifications(
    @Query('limit') int limit,
    @Query('lastId') String? lastId,
    @Query('lastTimestamp') String? lastTimestamp,
  );


  @GET('/{id}')
  Future<UsersNotification> findById(
    @Path() String? id,
  );

  @GET('/latest')
  Future<List<UsersNotification>> getLatestNotifications(
    @Query('limit') int limit,
    @Query('lastId') String? lastId,
    @Query('lastTimestamp') String? lastTimestamp,
  );

  @POST('/{id}/read-receipt')
  Future<void> markRead(
    @Path() String id
  );
}