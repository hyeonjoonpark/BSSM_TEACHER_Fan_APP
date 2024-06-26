import 'package:flutter/material.dart';

// 명명된 매개변수로 커스텀 navigation bar
PreferredSizeWidget? navBar({VoidCallback? onPress, IconData? icon}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight),
    child: AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              icon,
              color: Colors.black87,
              size: 20,
            ),
            onPressed: onPress,
          ),
        ],
      ),
    ),
  );
}
