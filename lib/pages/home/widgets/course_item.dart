import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image(
          image: AssetImage('assets/courseimg.jpg'),
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 4,
        ),
        Flexible(
          child: LayoutBuilder(
            builder: (_, constraints) {
              return AutoSizeText(
                "Criação de Apps Android e IOS em flutter - Crie 2 Apps",
                minFontSize: 3,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
        Text(
          'Maurycio Kemesson',
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          'R\$22,90',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
