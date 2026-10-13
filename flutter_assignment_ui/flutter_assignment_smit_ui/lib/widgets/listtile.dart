import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_smit_ui/theme/theme.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor = isSelected
        ? const Color(0xFFFF7A38)
        : (Theme.of(context).brightness == Brightness.dark
              ? const Color(0xFF303030)
              : Colors.grey.shade200);

    final contentColor = isSelected
        ? Colors.white
        : Theme.of(context).colorScheme.onSurface;

    final iconColor = isSelected ? Colors.black : Apptheme.Lighttheme.hintColor;

    final arrowColor = isSelected ? Colors.white : contentColor;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: ListTile(
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
        horizontalTitleGap: 12,
        minLeadingWidth: 0,
        tileColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: Icon(icon, color: iconColor, size: 25),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: contentColor,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Icon(
          CupertinoIcons.chevron_right,
          color: arrowColor,
          size: 18,
        ),
      ),
    );
  }
}
