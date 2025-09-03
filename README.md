# 🪙 CoinCap List

A simple and clean Flutter app that displays cryptocurrency assets from the CoinCap API.

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.8.1+)
- Dart SDK
- An IDE (VS Code, Android Studio, etc.)

### Installation

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd coincap_list
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Set up your API key**
   - Copy `.env.example` to `.env`
   - Add your CoinCap API key to the `.env` file:
   ```
   API_KEY=your_coincap_api_key_here
   BASE_URL=https://rest.coincap.io/v3
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

## 🏗️ Architecture

This project follows **Clean Architecture** principles with:

- **Domain Layer**: Entities and repository interfaces
- **Data Layer**: API data sources, DTOs, and repository implementations  
- **Presentation Layer**: BLoC/Cubit state management with UI components

### Key Technologies
- **State Management**: BLoC + RxDart for reactive programming
- **Network**: Dio for HTTP requests
- **Code Generation**: Freezed for immutable classes
- **Environment**: flutter_dotenv for secure configuration

## 📁 Project Structure

```
lib/
├── src/
│   ├── app/                    # App configuration
│   ├── core/                   # Shared utilities
│   │   ├── interceptors/       # API interceptors
│   │   └── utils/              # Helper utilities
│   ├── injection/              # Dependency injection
│   └── modules/
│       └── assets_list/        # Assets feature module
│           ├── data/           # Data sources & repositories
│           ├── domain/         # Entities & interfaces
│           └── presentation/   # UI & state management
└── main.dart
```

## 🔧 Configuration

The app uses environment variables for configuration. Make sure to:

1. Never commit your `.env` file (it's already in `.gitignore`)
2. Use `.env.example` as a template for other developers
3. Get your free API key from [CoinCap](https://coincap.io/)

---