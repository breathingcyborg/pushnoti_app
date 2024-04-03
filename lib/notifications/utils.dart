
import 'dart:math';

// https://stackoverflow.com/questions/63277849/flutter-local-notification-int-id-parameter
// https://github.com/MaikuB/flutter_local_notifications/blob/0fff663f4e275319b75a9b2ea6c3079421b563bf/flutter_local_notifications_platform_interface/lib/src/helpers.dart#L5-L8

int getAndroidMessageId(String? firebaseMessageId) {

  // firebase message id or random id
  var id = firebaseMessageId?.hashCode ?? Random().nextInt(0x7FFFFFF);

  // clamp id so that its 32 bit signed integer
  if (id > 0x7FFFFFF) {
    id = 0x7FFFFFF;
  }
  if (id < -0x8000000) {
    id = -0x8000000;
  }

  return id;
}