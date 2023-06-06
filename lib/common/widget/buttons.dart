import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final IconData icon;
  final String data;
  final VoidCallback onPressed;

  const IconTextButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(data),
    );
  }
}
