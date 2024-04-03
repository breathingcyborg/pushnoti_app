// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// Map of channel id to priority
// android versions <= 7.1 use priority
// and android oreo and up use importance 
Map<String, Priority> priorityMap = {
  'urgent': Priority.high,
  'high': Priority.defaultPriority,
  'standard': Priority.low,
};

/// Map of channel id to channel settings
Map<String, AndroidNotificationChannel>  channels = {
  'urgent':  AndroidNotificationChannel(
    'urgent', 
    'Urgent Alerts',
    description: 'Urgent alerts such as server went down etc',
    importance: Importance.high,
    playSound: true,
    sound: const RawResourceAndroidNotificationSound('notification_urgent_priority'),
    enableVibration: true,
    vibrationPattern: Int64List.fromList([0, 1000, 2000, 1000, 2000, 1000, 2000, 1000, 2000, 1000, 2000, 1000, 2000, 1000, 2000, 1000, 2000, 1000, 2000, 1000, 2000, 1000, 2000, 1000, 2000, 1000, 2000, 1000, 2000, 1000, 2000, 1000]),
    enableLights: true,
    ledColor: Colors.red,
  ),
  'high': AndroidNotificationChannel(
    'high', 
    'Important alerts',
    description: 'important alerts like updates',
    importance: Importance.defaultImportance,
    playSound: true,
    sound: const RawResourceAndroidNotificationSound('notification_high_priority'),
    enableVibration: true,
    vibrationPattern: Int64List.fromList([0, 1000, 2000, 1000, 2000, 1000]),
  ),
  'standard': const AndroidNotificationChannel(
    'standard', 
    'Standard',
    description: 'Regular messages or promotional messages',
    importance: Importance.low,
  ),
};

// TODO: sound and vibration settings for android 7.1 or lower

// Notes

// Priority:
// Urgent
// High
// Standard

// on older version (<= 7.1)
// channels are not supported
// so we need to set priority on individual notification 
// priority is int from -2 to 2 (includes -2 and 2)


// on 7.1 and above
// we need to set importance when creating notification channel
// importance is default, min, max, high, low

// purpose: urgent_alert 
// purpose: high_priority_message
// purpose: low_priority

// importance high | urgent for user | priority_high / priority_max
// makes sound, appears on heads up
// show everywhere, makes noise, peeks (heads up), can use fullscreen

// importance default | high for user | priority_default
// makes sound
// shows everywhere, makes noise, does not visually intrude (no heads up?)

// importance low | medium for user | priority_low
// makes no sound
// shows in notification shade, and maybe in status bar, no noise

// importance_min | low for user | priority_min
// makes no sound, does not appear in status bar
// only in shade below the fold, 

// dont use this
// importance_none | none for user | no corresponding priority
// makes no sound, does not appear in status bar or shade

