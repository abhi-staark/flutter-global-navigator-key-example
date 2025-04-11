# 🌐 Flutter Global Navigator Key Example

A simple Flutter project demonstrating how to use `GlobalKey<NavigatorState>` for global navigation and context access — without needing to pass `BuildContext`.

This technique is especially useful when you want to navigate from services, background handlers (like Firebase Messaging), or global state management layers like Bloc, Provider, etc.

## 🚀 Features

- Navigate between screens without `BuildContext`
- Show dialogs/snackbars globally
- Clean architecture-friendly
- Works great with push notifications and async events

## 📸 Screenshots

| Home Screen | Second Screen |
|-------------|---------------|
| ![Home](screenshots/home.png) | ![Second](screenshots/second.png) |

## 🧠 Key Concepts

- `GlobalKey<NavigatorState>` provides global access to the Navigator.
- `navigatorKey.currentState?.push(...)` allows navigation from anywhere.
- `navigatorKey.currentContext` gives access to context globally.
