
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

DateTime parseDate(String dateStr) {
  return DateTime.parse(dateStr).toLocal();
}

String formatShortDate(String dateStr) {
  var date = parseDate(dateStr);
  var now = DateTime.now();
  var isToday = DateUtils.isSameDay(date, now);
  var sameYear = now.year == date.year;

  if (isToday) {
    return DateFormat.jm().format(date);
  }
  if (sameYear) {
    return DateFormat("MMM d").format(date);
  }
  return DateFormat.yMd().format(date);
}

String formatDate(String dateStr) {
  var date = parseDate(dateStr);
  return DateFormat.yMMMd().format(date);
}

String formatDateTime(String dateStr) {
  var date = parseDate(dateStr);
  return DateFormat("dd MMM yyyy @ h:m a").format(date);
}