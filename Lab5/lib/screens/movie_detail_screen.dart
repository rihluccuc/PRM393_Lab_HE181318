import 'package:flutter/material.dart';
import '../models/movie.dart';

class MovieDetailScreen extends StatefulWidget {
  final Movie movie;

  const MovieDetailScreen({super.key, required this.movie});

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final movie = widget.movie;

    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Hero Banner
            Stack(
              children: [
                Image.network(
                  movie.posterUrl,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            /// Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                movie.title,
                style: const TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 8),

            /// Genres
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                spacing: 8,
                children: movie.genres
                    .map((genre) => Chip(label: Text(genre)))
                    .toList(),
              ),
            ),

            const SizedBox(height: 16),

            /// Overview
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(movie.overview),
            ),

            const SizedBox(height: 16),

            /// Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                      isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Colors.red),
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.star),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () {},
                ),
              ],
            ),

            const SizedBox(height: 16),

            /// Trailer List
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Trailers",
                style:
                TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: movie.trailers.length,
              itemBuilder: (context, index) {
                final trailer = movie.trailers[index];
                return ListTile(
                  leading: const Icon(Icons.play_circle),
                  title: Text(trailer.title),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}