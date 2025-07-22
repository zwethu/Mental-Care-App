Below is an overview of the main folder structure used in this Flutter project, following clean architecture and best practices:

```
lib/
└── src/
    ├── config/
    │   └── router/                 # App navigation and routing configuration
    ├── core/
    │   ├── constants/              # Core/app-wide constants (not feature-specific)
    │   ├── exceptions/             # Global exception and error handling classes
    │   ├── extensions/             # Dart/Flutter extension methods
    │   └── network/                # Network utilities, e.g., connectivity helpers
    ├── data/
    │   ├── datasource/
    │   │   ├── local/              # Local data sources (DB, shared prefs, etc.)
    │   │   └── remote/             # Remote data sources (APIs, services)
    │   ├── models/                 # Data models for API/local storage
    │   └── repositories/           # Repository implementations (data access)
    ├── domain/
    │   ├── entities/               # Business entities (pure domain models)
    │   ├── repositories/           # Repository interfaces/abstractions
    │   └── usecases/               # Business logic / use case classes
    └── presentation/
        ├── cubits/                 # BLoC/Cubit files for state management
        ├── pages/                  # Top-level app pages/screens
        ├── values/                 # UI constants (colors, dimensions, lists, strings)
        ├── views/                  # Reusable component views
        └── widgets/                # Shared/general-purpose widgets

main.dart                           # App entry point

```

### Main Folder Explanations

- **config/** — Global configuration files and routing setup.
- **core/** — Shared core utilities/constants used across all features.
- **data/** — Data access (API/local), data models, and repositories.
- **domain/** — Business logic (entities, repositories, usecases).
- **presentation/** — UI widgets, screens, state management (Cubits/BLoC), and UI constants.

