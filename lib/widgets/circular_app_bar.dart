import 'package:flutter/material.dart';

class CircularAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CircularAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFB2DFDB),
      title: const Center(
          child: Text(
        "Your tasks",
        style: TextStyle(color: Colors.black, fontSize: 24),
      )),
      flexibleSpace: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        child: Container(
          color: const Color(0xFF00796B),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {
              const Align(
                alignment: Alignment.center,
              );
            },
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
