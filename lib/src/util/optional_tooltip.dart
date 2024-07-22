import 'package:flutter/material.dart';

class OptionalTooltip extends StatelessWidget {
  const OptionalTooltip({
    this.message,
    required this.child,
    super.key,
  });
  final String? message;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (message != null && message!.isNotEmpty) {
      return Tooltip(message: message, child: child);
    }
    return child;
  }
}
