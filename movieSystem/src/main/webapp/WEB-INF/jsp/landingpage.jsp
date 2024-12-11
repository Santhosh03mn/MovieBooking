<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CinemaConnect - Movie Booking</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap');

        body {
            font-family: 'Inter', sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #fef6fc; /* Lightened background */
            color: #1a202c;
        }

        /* Hero Section */
        .hero {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 4rem 2rem;
            background: #fff4fa;
            gap: 2rem;
        }

        .hero-content {
            flex: 1;
        }

        .hero h1 {
            font-size: 3rem;
            font-weight: 700;
            color: #d486b8;
        }

        .hero p {
            margin: 1rem 0;
            font-size: 1.2rem;
            color: #4a4a4a;
        }

        .hero a {
            display: inline-block;
            background: #d486b8;
            color: white;
            padding: 0.8rem 1.5rem;
            border-radius: 0.5rem;
            font-weight: 600;
            transition: background 0.3s ease;
        }

        .hero a:hover {
            background: #b06592;
        }

        .hero-image {
            flex: 1;
            display: flex;
            justify-content: flex-end;
        }

        .hero img {
            max-width: 100%;
            height: auto;
            border-radius: 0.5rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Features and Movie Sections */
        .feature-card, .movie-card {
            background: white;
            border-radius: 0.5rem;
            padding: 2rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            
        }

        .feature-card:hover, .movie-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
        }

        footer {
            background: #d486b8;
            color: white;
            text-align: center;
            padding: 2rem 0;
        }

        footer p {
            margin: 0;
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="fixed top-0 w-full bg-white shadow-md z-50">
        <div class="container mx-auto flex justify-between items-center p-4">
            <div class="text-2xl font-bold text-d486b8">CinemaConnect</div>
            <div class="space-x-6">
          
                <a href="/loginPage" class="hover:text-d486b8">Login</a>
                <a href="/register" class="hover:text-d486b8">Sign Up</a>
            </div>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="hero pt-20 mt-20">
    <br>
        <div class="hero-content">
            <h1>Discover Cinematic Worlds</h1>
            <p>Seamless movie selection, instant booking, unforgettable entertainment.</p>
            <p>Endless Entertainment Anytime, Anywhere!!</p>
            <a href="#movies">Browse Movies</a>
        </div>
        <div class="hero-image">
            <img src="https://img.freepik.com/premium-photo/film-reel-with-clapperboard-isolated-bright-pink-background-pastel-colors-3d-render_989822-3072.jpg" alt="Cinema Experience">
        </div>
    </section>

    <!-- Features Section -->
    <section id="features" class="py-20 bg-fef6fc">
        <div class="container mx-auto text-center">
            <h2 class="text-4xl font-bold mb-16 text-gray-800">Why CinemaConnect</h2>
            <div class="grid md:grid-cols-3 gap-8">
                <div class="feature-card">
                    <div class="text-5xl mb-6 text-d486b8">🎬</div>
                    <h3 class="text-2xl font-semibold mb-4">Wide Selection</h3>
                    <p>Extensive movie catalog across genres</p>
                </div>
                <div class="feature-card">
                    <div class="text-5xl mb-6 text-d486b8">💺</div>
                    <h3 class="text-2xl font-semibold mb-4">Easy Booking</h3>
                    <p>Simple seat selection and reservation</p>
                </div>
                <div class="feature-card">
                    <div class="text-5xl mb-6 text-d486b8">🎟️</div>
                    <h3 class="text-2xl font-semibold mb-4">Instant Tickets</h3>
                    <p>Digital tickets delivered instantly</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Movies Section -->
    <section id="movies" class="py-20 bg-gray-100">
        <div class="container mx-auto text-center">
            <h2 class="text-4xl font-bold mb-16 text-gray-800">Now Showing</h2>
            <div class="grid md:grid-cols-4 gap-8">
                <div class="movie-card">
                    <img src="https://m.media-amazon.com/images/M/MV5BNTAzMGQ2MGItMjk5OC00YWIwLThmMjUtYmNjMTIxNzVlZWQ4XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg" alt="Movie" class="w-full rounded-lg mb-6">
                    <h3 class="text-xl font-semibold">Biography</h3>
                </div>
                <div class="movie-card">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ12nTJ8AwZsvQRPFKDREIs2GUi6pYk9jTRADUQF8UvxB7HLSdPKs9aHOaL69cnfr521pw&usqp=CAU/250x350" alt="Movie" class="w-full rounded-lg mb-6">
                    <h3 class="text-xl font-semibold">Romantic Journey</h3>
                </div>
                <div class="movie-card">
                    <img src="https://upload.wikimedia.org/wikipedia/en/6/6f/War_official_poster.jpg" alt="Movie" class="w-full rounded-lg mb-6">
                    <h3 class="text-xl font-semibold">Action Blast</h3>
                </div>
                <div class="movie-card">
                    <img src="https://m.media-amazon.com/images/M/MV5BOWY5MDFiYzEtMWE5Ny00OTA1LWFkNmEtZTBkMmE1ZWE0N2MyXkEyXkFqcGc@._V1_.jpg/250x350" alt="Movie" class="w-full rounded-lg mb-6">
                    <h3 class="text-xl font-semibold">Drama</h3>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 CinemaConnect. All rights reserved.</p>
    </footer>
</body>
</html>