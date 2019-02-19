---
title: 02 - Flutter Development
tags: [Notebooks/Mobile Dev]
---

# 02 - Flutter Development

> Building native mobile applications using `Flutter` and the `Dart` programming language

----

[**`Flutter`**](https://flutter.io/) is an [open-source](https://en.wikipedia.org/wiki/Open-source_software) [application development SDK](https://en.wikipedia.org/wiki/Application_framework) created by Google. It is used to develop native applications for Android and iOS mobile platforms.

[Flutter Documentation](https://flutter.io/docs)

## Get Started

To start developing mobile applications with the Flutter framework begin by installing the Flutter SDK and appending its installation directory to your environment path.

[Flutter Download](https://flutter.io/docs/get-started/install)

Verify Flutter has been successfully installed on your system by running the following command:

```cmd
flutter doctor -v
```

This command checks your environment and displays a report of the status of your Flutter installation.

## Basic Commands

Display devices connected to your system:
```cmd
flutter devices
```

Create a new flutter project:
```cmd
flutter create <PROJECT_NAME>
```

Run a flutter application (from within project root directory):
```cmd
flutter run
```

## Hello World

The minimal Flutter app simply calls the `runApp()` function with a widget:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text(
        'Hello, world!',
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}
```

----

<br />
<br />
