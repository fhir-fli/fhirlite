// Flutter imports:
import 'package:flutter/material.dart';

class StyledAppBarIconButtons extends StatelessWidget {
  const StyledAppBarIconButtons(
      {Key? key,
      required this.icon,
      this.onPressed,
      this.color,
      this.iconSize = 32})
      : super(key: key);

  final IconData icon;
  final VoidCallback? onPressed;
  final Color? color;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      splashColor: Colors.grey.withOpacity(0.25),
      highlightColor: Colors.grey.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(icon, size: iconSize, color: color),
      ),
      onTap: onPressed,
    );
  }
}
