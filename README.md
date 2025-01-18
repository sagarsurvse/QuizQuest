# Quiz App Flutter

A responsive and feature-rich quiz app built using the Flutter framework. This project includes gamification elements, such as a scoring system and coin rewards, to make the quiz experience more engaging for users.

## Features

- Fetches quiz data from a RESTful API.
- Multiple-choice questions.
- Progress tracking with a progress bar.
- Scoring and coin-based rewards system.
- Summary screen showing final score, coins earned, and badges based on performance.
- Responsive design for various devices and orientations.

## Video Demo

Watch the app demo [here](https://drive.google.com/file/d/1wWoeMHJb4P_ASj5FwTb74q8Khfpr6vNi/view).

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```

2. Navigate to the project directory:
   ```bash
   cd quiz_app_flutter
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run
   ```

Ensure you have Flutter installed on your machine. For Flutter installation instructions, visit [Flutter's official documentation](https://flutter.dev/docs/get-started/install).

## API Integration

This app fetches quiz data from a RESTful API. The API endpoint used in the app is:

```
https://api.jsonserve.com/Uw5CrX
```

## Code Overview

### Folder Structure

- **main.dart**: Entry point of the app.
- **screens/**: Contains all the screens (Home, Quiz, Summary).
- **services/**: Includes the API service for fetching quiz data.

### Key Files

1. `main.dart`: Initializes the app and sets up the theme.
2. `home_screen.dart`: The home screen with a button to start the quiz.
3. `quiz_screen.dart`: Displays questions and options, manages scoring, and tracks progress.
4. `summary_screen.dart`: Shows a summary of the quiz results, including score, coins earned, and badge.
5. `api_service.dart`: Handles API calls to fetch quiz data.


