import 'package:flutter/material.dart';

class NoAppsWidget extends StatelessWidget {
  const NoAppsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 250,
              child: AspectRatio(
                aspectRatio: 889/978,
                child: Image.asset(
                  'assets/images/create_app.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
          Text(
            'Ready to send notifications? \n Create an app to get started!',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.color
                    ?.withOpacity(0.5),
                height: 2),
          )
        ],
      ),
    );
  }
}
