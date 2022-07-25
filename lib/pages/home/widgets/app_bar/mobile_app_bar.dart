import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Image(image: AssetImage('assets/logo/logocol.png'),width: 45, height: 45,),
      centerTitle: true,
      actions: [
        IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {})
      ],
    );
  }
}
