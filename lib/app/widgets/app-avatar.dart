import 'package:flutter/material.dart';
import 'package:pushnoti_app/common/avatar_color.dart';

class AppAvatar extends StatelessWidget {

  final String displayName;

  const AppAvatar({super.key, required this.displayName});
  
  @override
  Widget build(BuildContext context) {
    var (bg, fg) = getAvatarColorFromName(displayName);
    return CircleAvatar(
      backgroundColor: bg,
      child: Text(
        displayName.substring(0, 2).toUpperCase(),
        style: TextStyle(color: fg),
      )
    );
  }
}