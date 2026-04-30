# HRMS Mobile

A Flutter project for the HRMS system.

## Project Setup

This project uses [FVM](https://fvm.app/) to manage Flutter versions. The required Flutter version is **3.29.0** (see [.fvmrc]).

### Prerequisites

- [Flutter](https://flutter.dev/) (managed via [FVM](https://fvm.app/))
- [Dart](https://dart.dev/)
- [FVM](https://fvm.app/docs/getting_started/installation/)

### Getting Started

1. **Install dependencies:**
   ```sh
   fvm flutter pub get
   ```
2. **(Optional) Set FVM as default Flutter:**
   ```sh
   fvm use 3.29.0
   fvm flutter --version
   ```
3. **Run the app with flavors:**

   - **Development:**
     ```sh
     fvm flutter run --flavor dev --dart-define=FLAVOR=dev
     ```
   - **Production:**
     ```sh
     fvm flutter run --flavor prod --dart-define=FLAVOR=prod
     ```

## Code Generation

This project uses code generation for models and providers (e.g., [freezed](https://pub.dev/packages/freezed), [riverpod_generator](https://pub.dev/packages/riverpod_generator)).

Whenever you make changes to files that use code generation (e.g., models, providers), run:

```sh
fvm dart run build_runner watch --delete-conflicting-outputs
```

This will watch for changes and automatically generate the necessary files.

## Project Structure

- `lib/` - Main source code
  - `application/` - App-wide assets and themes
  - `core/` - Core utilities, config, network, navigation, etc.
  - `features/` - Feature modules (auth, dashboard, attendance, etc.)
- `assets/` - Fonts and other static assets
- `android/`, `ios/` - Native platform code

## Useful Commands

- **Get dependencies:**
  ```sh
  fvm flutter pub get
  ```
- **Run code generation:**
  ```sh
  fvm dart run build_runner watch --delete-conflicting-outputs
  ```
- **Run the app (Development):**
  ```sh
  fvm flutter run --flavor dev --dart-define=FLAVOR=dev
  ```
- **Run the app (Production):**
  ```sh
  fvm flutter run --flavor prod --dart-define=FLAVOR=prod
  ```
- **Build APK (Production):**
  ```sh
  fvm flutter build apk --flavor prod --dart-define=FLAVOR=prod
  ```
- **Run reset password on local: (change the token to the valid one on email)**
  ```sh
  xcrun simctl openurl booted "hrms-app://com.okjob.hrms/reset-password?token=a637f8e405b6ef74cde5be58a45affc19e3fd2fabb59f8820dcd35fde3fa1c4f&email=test@mail.com"
  ```
  


## Notes

- Make sure to use FVM to ensure the correct Flutter version is used.
- If you add or modify models/providers with code generation annotations, always re-run the code generation command above.

---

For more information, see the [Flutter documentation](https://docs.flutter.dev/) and [FVM documentation](https://fvm.app/docs/).
