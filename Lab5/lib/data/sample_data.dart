import '../models/movie.dart';

final List<Movie> sampleMovies = [
  Movie(
    id: 1,
    title: "Inception",
    posterUrl:
    "https://image.tmdb.org/t/p/w500/8IB2e4r4oVhHnANbnm7O3Tj6tF8.jpg",
    overview:
    "A thief who steals corporate secrets through dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.",
    genres: ["Action", "Sci-Fi", "Thriller"],
    rating: 8.8,
    trailers: [
      Trailer(
          title: "Official Trailer 1",
          youtubeUrl: "https://youtube.com/watch?v=YoHD9XEInc0"),
    ],
  ),
  Movie(
    id: 2,
    title: "Interstellar",
    posterUrl:
    "https://image.tmdb.org/t/p/w500/rAiYTfKGqDCRIIqo664sY9XZIvQ.jpg",
    overview:
    "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.",
    genres: ["Adventure", "Drama", "Sci-Fi"],
    rating: 8.6,
    trailers: [
      Trailer(
          title: "Official Trailer",
          youtubeUrl: "https://youtube.com/watch?v=zSWdZVtXT7E"),
    ],
  ),
];