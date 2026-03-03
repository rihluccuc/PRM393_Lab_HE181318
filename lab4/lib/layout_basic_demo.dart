import 'package:flutter/material.dart';
//exercise 3
class LayoutBasicsDemo extends StatelessWidget {
  const LayoutBasicsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final movies = [
      'Avatar',
      'Inception',
      'Interstellar',
      'Joker',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise 3 – Layout Basics'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title
            const Text(
              'Now Playing',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            // List
            Expanded(
              child: ListView.builder(
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white12
                      ),
                      child: Row(
                        children: [
                          // avatar
                          CircleAvatar(
                            radius: 22,
                            child: Text(movies[index][0]),
                          ),

                          const SizedBox(width: 12),

                          // movie info
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movies[index],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'Sample description',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}