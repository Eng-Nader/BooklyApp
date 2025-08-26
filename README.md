# 📚 Bookly App
[![Ask DeepWiki](https://devin.ai/assets/askdeepwiki.png)](https://deepwiki.com/Eng-Nader/BooklyApp)

Bookly is a modern Flutter application designed for book lovers. It leverages the Google Books API to provide a seamless experience for discovering, searching, and previewing a vast collection of books through a clean and intuitive interface.

## ✨ Features

- **Splash Screen**: An animated entry point to the application.
- **Home Page**: Displays featured books in a horizontal scroll view and a vertical list of "Best Seller" books.
- **Book Details**: A dedicated screen showing comprehensive information for each book, including its cover, title, author, rating, and a detailed description.
- **Similar Books**: On the details screen, a section suggests other books you might like based on the current book's category.
- **Search Functionality**: A dedicated search page to find books by subject or keyword.
- **Book Preview**: Directly launch a book's preview URL from the details page.
- **State Management**: Robust state management with custom widgets for loading, success, and error states.

## 🛠️ Tech Stack & Architecture

This project is built with a focus on clean, scalable, and maintainable code.

- **Framework**: Flutter
- **Language**: Dart
- **Architecture**: Follows Clean Architecture principles with a feature-first project structure.
- **State Management**: **Flutter BLoC / Cubit** for managing application state predictably.
- **Dependency Injection**: **GetIt** is used as a service locator for managing dependencies.
- **Networking**: **Dio** for performing HTTP requests to the Google Books API.
- **Routing**: **GoRouter** provides a declarative routing solution for navigation.
- **UI Libraries**:
    - **CachedNetworkImage**: For loading and caching network images efficiently.
    - **Lottie**: For high-quality animations.
    - **Google Fonts**: For custom typography.
    - **Font Awesome Flutter**: For a wide range of icons.

## 🚀 Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

- Flutter SDK: [Installation Guide](https://flutter.dev/docs/get-started/install)
- A code editor like VS Code or Android Studio.

### Installation

1.  **Clone the repository**
    ```sh
    git clone https://github.com/Eng-Nader/BooklyApp.git
    ```
2.  **Navigate to the project directory**
    ```sh
    cd BooklyApp
    ```
3.  **Install dependencies**
    ```sh
    flutter pub get
    ```
4.  **Run the application**
    ```sh
    flutter run
    ```

## 📂 Project Structure

The project is organized using a feature-first approach to promote scalability and separation of concerns.

```
lib
├── Feature
│   ├── Splash/           # Splash screen feature
│   ├── home/             # Home, details, and similar books feature
│   └── search/           # Search feature
└── core/                 # Core utilities, widgets, and services
    ├── errors/           # Custom failure/error handling
    ├── utils/            # Shared utilities (API, router, DI)
    └── widget/           # Reusable widgets
