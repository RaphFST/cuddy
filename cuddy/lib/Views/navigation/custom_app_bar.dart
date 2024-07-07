import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final int selectedIndex;
  final VoidCallback? onSearchPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.selectedIndex,
    this.onSearchPressed,
  });

  @override
  Widget build(BuildContext context) {
    var menuIcon = const Icon(
      Icons.menu,
      color: Colors.white,
      size: 20,
    );
    var menuTooltip = 'Show side menu';
    var diamondIcon = const Icon(Icons.diamond, color: Colors.white, size: 20);
    var diamondTooltip = 'Diamond Icon';

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.blue,
      leading: Builder(
        builder: (context) => IconButton(
          icon: menuIcon,
          tooltip: menuTooltip,
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      title: Text(
        title,
        semanticsLabel: title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: diamondIcon,
          tooltip: diamondTooltip,
          onPressed: () {
            // Ajoutez ici l'action que vous souhaitez pour l'icône de diamant
          },
        ),
      ],
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
