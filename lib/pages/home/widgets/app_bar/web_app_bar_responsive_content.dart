import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: const Color(0xff757575)),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 4,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon:
                            const Icon(Icons.search, color: Color(0xff919297)),
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pesquise por alguma coisa aqui',
                            isCollapsed: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (constraints.maxWidth >= 400) ...[
                const SizedBox(
                  width: 32,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Aprender',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              if (constraints.maxWidth >= 500) ...[
                const SizedBox(
                  width: 8,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Flutter',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ]
            ],
          );
        },
      ),
    );
  }
}
