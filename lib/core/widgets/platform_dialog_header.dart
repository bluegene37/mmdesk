import 'dart:io';
import 'package:flutter/material.dart';

class PlatformDialogHeader extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;

  const PlatformDialogHeader({
    super.key,
    required this.title,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final isMac = Platform.isMacOS;

    final titleWidget = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 20, color: iconColor),
        const SizedBox(width: 8),
        Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
      ],
    );

    final controlsWidget = isMac
        ? Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFF5F56),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 12,
                height: 12,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFBD2E),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 12,
                height: 12,
                decoration: const BoxDecoration(
                  color: Color(0xFF27C93F),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.remove, size: 16, color: Colors.black54),
              const SizedBox(width: 12),
              const Icon(Icons.crop_din, size: 16, color: Colors.black54),
              const SizedBox(width: 12),
              InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(Icons.close, size: 16, color: Colors.black54),
              ),
            ],
          );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: isMac
            ? [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    controlsWidget,
                    const SizedBox(width: 16),
                    titleWidget,
                  ],
                ),
                const SizedBox(), // Balances the spaceBetween
              ]
            : [titleWidget, controlsWidget],
      ),
    );
  }
}
