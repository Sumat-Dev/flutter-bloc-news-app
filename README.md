
# Flutter Bloc News App  📰🚀

## 📖 Table of Contents
- [Introduction](#introduction)
- [Architectural Pattern](#architectural-pattern)
- [Project Structure](#project-structure)
- [Screenshots](#screenshots)
- [Getting Started](#getting-started)
- [Packages](#packages)


## 🚀 Introduction
Flutter news application example demonstrates clean architecture principles and state management using the BLoC (Business Logic Component) pattern

##  🏗 Architectural Pattern

### Clean Architecture Layers
1. **Presentation Layer**
    - Widgets
    - BLoC Providers
    - UI Components

2. **Domain Layer**
    - Use Cases
    - Entities
    - Repository Interfaces

3. **Data Layer**
    - Repository Implementations
    - Models
    - Data Mapping
    - Remote Data Source (API)
    - Local Data Source (Database)


## 📂 Project Structure
```
lib/
│
├── config/
│   ├── routes/
│   └── themes/
│
├── core/
│   ├── common/
│   ├── constants/
│   ├── error/
│   ├── extensions/
│   ├── resources/
│   ├── services/
│   ├── usecases/
│   └── utils/
│
├── features/
│   └── news/
│       ├── data/
│       │   ├── datasources/
│       │   ├── models/
│       │   └── repositories/
│       ├── domain/
│       │   ├── entities/
│       │   ├── repositories/
│       │   └── usecases/
│       └── presentation/
│           ├── bloc/
│           ├── pages/
│           └── widgets/
│
└── main.dart
```

## 📱 Screenshots
[Add your app screenshots here]

## 🚀 Getting Started

### Installation
1. Clone the repository
```bash
git clone https://github.com/Sumat-Dev/flutter-bloc-news-app.git
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the application
```bash
flutter run
```

## 📦 Packages

- `bloc: ^4.6.6` (State Management)
- `dio: ^1.2.2` (HTTP Requests)

## 🧪 Testing
- Unit Tests

### Running Tests
```bash
flutter test
```

## 👨‍💻 Author
**Sumat Dev**
- GitHub: [@Sumat-Dev](https://github.com/Sumat-Dev)

---

**Happy Coding! 💻✨**

