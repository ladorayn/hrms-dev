import 'package:flutter/material.dart';

enum ToastType { success, error, info }

void showCustomToast(BuildContext context, String message, ToastType type) {
  Color backgroundColor;
  IconData iconData;

  switch (type) {
    case ToastType.success:
      backgroundColor = Colors.green;
      iconData = Icons.check_circle_outline;
      break;
    case ToastType.error:
      backgroundColor = Colors.red.shade700;
      iconData = Icons.error_outline;
      break;
    case ToastType.info:
    default:
      backgroundColor = Colors.blue.shade700;
      iconData = Icons.info_outline;
      break;
  }

  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: backgroundColor,
      content: Row(
        children: [
          Icon(iconData, color: Colors.white),
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              message,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      duration: const Duration(seconds: 4),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
