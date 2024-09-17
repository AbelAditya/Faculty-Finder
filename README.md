# Faculty Finder

This Flutter project allows users to search for a faculty member’s cabin details by simply entering the faculty member's name. The app uses a pre-defined list of faculty names and their cabin details stored locally within the app.

## Features

- **Faculty Search:** Enter the faculty member's name to get their cabin details.
- **Instant Results:** Retrieves cabin information from a local data source.
- **Simple UI:** Clean and minimal user interface for easy navigation.

## Screenshots
*(Add screenshots here to give users a visual preview of the app)*

## Requirements

- Flutter 3.x.x or higher
- Dart 2.x.x or higher

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/faculty-cabin-finder.git
   cd faculty-cabin-finder

2. Install dependencies:
   ```bash
   flutter pub get

3. Run the App:
   ```bash
   flutter run

## Project Structure

    lib/
    ├── data/                 # Local data files with faculty details
    ├── components/           # Custom reusable widgets
    ├── screens/              # UI screens for searching and displaying results
    └── main.dart             # Entry point of the app
