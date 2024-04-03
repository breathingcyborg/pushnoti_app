import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

class CopyWidget extends StatelessWidget {
  final String text;

  const CopyWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration:
          BoxDecoration(color: Theme.of(context).colorScheme.surfaceVariant),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                text, 
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            Flexible(
              child: Row(children: [
                Flexible(
                  child: TextButton(
                    style: Theme.of(context).textButtonTheme.style?.copyWith(
                      padding: const MaterialStatePropertyAll(EdgeInsets.all(4.0))
                    ),
                    onPressed: () async {
                      await Clipboard.setData(ClipboardData(text: text));
                      const snackBar = SnackBar(
                        content: Text('Copied'),
                      );
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: const Text('COPY'),
                  ),
                ),
                Flexible(
                  child: TextButton(
                    style: Theme.of(context).textButtonTheme.style?.copyWith(
                      padding: const MaterialStatePropertyAll(EdgeInsets.all(4.0))
                    ),
                    onPressed: () {
                      Share.share(text);
                    },
                    child: const Text('SHARE'),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
