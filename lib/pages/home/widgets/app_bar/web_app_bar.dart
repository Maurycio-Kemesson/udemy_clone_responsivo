import 'package:flutter/material.dart';
import 'package:udemy_clone_responsivo/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text("Flutter"),
          const SizedBox(
            width: 32,
          ),
          const WebAppBarResponsiveContent(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
          const SizedBox(
            width: 24,
          ),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              child: const Text(
                'Fazer login',
                style: TextStyle(color: Colors.white),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white, width: 2),
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
            height: 38,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Cadastra-se',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
