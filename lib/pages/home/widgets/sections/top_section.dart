import 'package:flutter/material.dart';
import 'package:udemy_clone_responsivo/breakpoints.dart';
import 'package:udemy_clone_responsivo/pages/home/widgets/custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= tabletBreakpoint) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.asset(
                    'assets/tecnolog.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      width: 450,
                      padding: const EdgeInsets.all(22),
                      child: Column(
                        children: const [
                          Text(
                            'Aprenda Flutter com este curso',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Bora aprender Mobile com o professor Maurycio Kemesson! Cursos por apenas R\$22,90. Qualidade garantida.',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 16),
                          CustomSearchField()
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }
        if (maxWidth >= mobileBreakpoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/tecnolog.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      width: 350,
                      padding: EdgeInsets.all(22),
                      child: Column(
                        children: [
                          const Text(
                            'Aprenda Flutter com este curso',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Bora aprender Mobile com o professor Maurycio Kemesson! Cursos por apenas R\$22,90. Qualidade garantida.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 16),
                          CustomSearchField()
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: Image.asset(
                'assets/tecnolog.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Aprenda Flutter com este curso',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Bora aprender Mobile com o professor Maurycio Kemesson! Cursos por apenas R\$22,90. Qualidade garantida.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomSearchField()
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
