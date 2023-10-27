class Strings {
  static const String aboutP1 =
      'Hello there! I\'m Shyam jith, a passionate Flutter developer hailing from the picturesque land of Kerala, India. With a background in computer science engineering, I thrive on turning innovative ideas into delightful digital experiences.';

  static const String aboutP2title='Continuous Learning';
  static const String aboutP2 ='In the rapidly evolving world of technology, there\'s always something new to learn. I\'m an ardent advocate of continuous learning, staying updated with the latest trends, techniques, and best practices. This allows me to integrate cutting-edge solutions into my projects, ensuring they remain relevant and ahead of the curve.';

  static const String aboutP3title='Let\'s Connect!';
  static const String aboutP3 ='I\'m thrilled to be part of the vibrant Flutter community and contribute to shaping the digital landscape. If you have a project in mind, a collaboration opportunity, or just want to geek out over the latest tech trends, feel free to reach out. Together, we can transform ideas into reality!';

  static const String aboutP4 ='Thank you for visiting my portfolio. Let\'s create amazing experiences together.';
}
class MD{
  static const String secureDoc='''
# SecureDocs Manager: Easily Organize and Manage Your Files, Offline

### SecureDocs Manager is the most secure and convenient way to store and manage your files, offline. With SecureDocs Manager, you can:

- Store your sensitive documents, images, and videos in a secure vault that is protected by military-grade encryption.
- Easily organize and manage your files with powerful search and filtering features.
- Share files with others securely and easily.
- Download files for offline access.
- Add a lock to any file to prevent unauthorized access.

### SecureDocs Manager is the perfect app for anyone who needs to store and manage their files securely, whether they are on the go or at home.

## Features:

- Offline secure file storage: Store your files securely in a vault that is protected by military-grade encryption, even when you don't have an internet connection.
- All-in-one file management solution: Easily organize and manage your files with powerful search and filtering features.
- Secure file sharing: Share files with others securely and easily.
- Offline file access: Download files for offline access, so you can work on them even when you don't have an internet connection.
- File locking: Add a lock to any file to prevent unauthorized access.

## Benefits:

- Keep your files safe and secure: SecureDocs Manager uses military-grade encryption to protect your files from unauthorized access, even if your device is lost or stolen.
- Easily manage your files: SecureDocs Manager makes it easy to organize and manage your files, so you can find what you need quickly and easily.
- Share files securely: SecureDocs Manager makes it easy to share files with others securely, so you can collaborate on projects or send important documents without worrying about them falling into the wrong hands.
- Access your files offline: SecureDocs Manager lets you download files for offline access, so you can work on them even when you don't have an internet connection.
- Prevent unauthorized access: SecureDocs Manager lets you add a lock to any file to prevent unauthorized access, so you can be sure that your sensitive files are safe.

Download SecureDocs Manager today and start storing and managing your files securely!

''';

static const String brickCli='''
# Mason bricks 🧱

[Mason](https://pub.dev/packages/mason_cli) reusable bricks for efficient project scaffolding.

## Getting started 🚀

### Adding a brick 🧱️

To add a brick, you have a few options:

```sh
# 🎯 Activate Mason CLI (if not done already):

dart pub global activate mason_cli
```
```sh
# Add a brick from a Git URL:

mason add <BRICK_NAME> --git-url https://github.com/shyamexe/bricks-cli --git-path path/to/<BRICK_NAME>
```
```sh
# Add a brick globally from a Git URL:

mason add -g <BRICK_NAME> --git-url https://github.com/shyamexe/bricks-cli --git-path path/to/<BRICK_NAME>
```
```sh
# For instance, to add the flutter-package brick:

mason add -g flutter-package --git-url https://github.com/shyamexe/bricks-cli --git-path flutter-template/
```

## Available Bricks ✨

| name                                       | description                                                                 |
| ------------------------------------------ | --------------------------------------------------------------------------- |
| [`flutter-package`](https://github.com/shyamexe/bricks-cli/tree/main/flutter-template) | Create a new Flutter project with basic structure|
| [`bloc`](https://github.com/shyamexe/bricks-cli/tree/main/bloc) | Generate a new Bloc|
| [`cubit`](https://github.com/shyamexe/bricks-cli/tree/main/cubit) | Generate a new Cubit|
| [`feature-block`](https://github.com/shyamexe/bricks-cli/tree/main/feature-block) | Generate a new module block|


### flutter-template  Brick Installation 

```sh
# Add flutter-template from GitHub
mason add -g flutter-template --git-url https://github.com/shyamexe/bricks --git-path flutter-template

# List all globally installed bricks
mason ls -g

# Generate code using the brick
mason make flutter-template

# Remove the brick (global)
mason remove -g flutter-template

```

### bloc/cubit Installation 

```sh
# Globally add cubit brick from GitHub
mason add -g cubit --git-url https://github.com/shyamexe/bricks --git-path cubit

# Generate a new Cubit
mason make cubit --name counter --style equatable

```
#### To load the brick inside your project:

1 Create mason/mason.yaml in your project root:

```yaml
bricks:
  cubit:
    git:
      url: https://github.com/shyamexe/bricks-cli.git
      path: cubit

```

2 Run the following commands:

```sh
mason get

mason make cubit -o ..\\Yoru\\output\folder\\  --name counter --style equatable
```
''';
static const String scrollableTabBar=''''
# scrollable_tab_view
[![pub package](https://img.shields.io/pub/v/scrollable_tab_view.svg)](https://pub.dartlang.org/packages/scrollable_tab_view)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

This Flutter package provides a vertical scrollable tab bar widget that allows you to display resizable tabs

### Demo

![gif](https://github.com/shyamexe/scrollable_tab_view/assets/93277108/7ffe8424-097a-4b4c-8d8d-1dc62ce93448)

## Installation

Add this to your `pubspec.yaml` file:

```yaml
dependencies:
  scrollable_tab_view: <latest-version>
```

## Installation

Import the package in your Dart file:

```yaml
import 'package:scrollable_tab_view/scrollable_tab_view.dart';

```

## Usage

The ScrollableTab widget allows you to create a tab bar with scrollable tabs without using a controller.

```dart
ScrollableTab(
  labelColor: Colors.black,
  tabs: List.generate(
      5,
      (index) => Tab(
            text: 'index \$index',
          )),
  children: List.generate(
      5,
      (index) => ListTile(
            title: Center(
              child: Text(
                'tab Number \$index',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontSize: 20.0 + (30 * index)),
              ),
            ),
          )),
),

```

The ScrollableTabBar and ScrollableTabViewWithController widgets allow you to create a tab bar with scrollable tabs using a TabController.

```dart
Column(
  children: [

    ScrollableTabBar(
      labelColor: Colors.black,
      controller: controller,
      tabs: List.generate(
          5,
          (index) => Tab(
                text: 'index \$index',
              )),
    ),
    ScrollableTabViewWithController(
      controller: controller,
      children: List.generate(
          5,
          (index) => ListTile(
                title: Center(
                  child: Text(
                    'tab Number \$index',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(fontSize: 20.0 + (30 * index)),
                  ),
                ),
              )),
    )
  ],
),
```
''';

static const String dictionary=''''
## About

This is a dictionary app built with flutter using the bloc pattern. It uses the Dictionary API and Datamuse API to fetch data. The app has features like audio pronunciation, synonyms, antonyms, examples and share options. It also has a dark mode feature.

- [live link(WEB)](https://one-dictionary.web.app)


## Packages we are using

- [hive](https://pub.dev/packages/hive)
- [audioplayers](https://pub.dev/packages/audioplayers)
- [equatable](https://pub.dev/packages/equatable)
- [bloc](https://pub.dev/packages/bloc)
- [lottie](https://pub.dev/packages/lottie)
- [http](https://pub.dev/packages/http)
- [share_plus](https://pub.dev/packages/share_plus)
- [flutter_native_splash](https://pub.dev/packages/flutter_native_splash)

## Used API's

- [Dictionary API](https://dictionaryapi.dev/)
- [Datamuse API](https://www.datamuse.com/api/)

## Screenshots

<table>
  <td>
   <img src="https://user-images.githubusercontent.com/93277108/215252832-4c97c09a-cfa0-451d-bec7-9f0067f860c1.gif">
  </td>
  <td>
   <img src="https://user-images.githubusercontent.com/93277108/215252874-d6b902b8-9ace-41ac-947b-8c2b00e58d68.gif">
  </td>
  <td>
   <img src="https://user-images.githubusercontent.com/93277108/215252936-a8b7cfe8-65c3-4822-97e0-807ebc22bb85.gif">
  </td>
  <td>
   <img src="https://user-images.githubusercontent.com/93277108/215252979-613061ba-0738-4322-8898-184c4f5b1578.gif">
  </td>
  
  
</table>

## Getting Started

1. Make sure you have the latest version of Flutter installed on your computer. You can download it [here](https://docs.flutter.dev/get-started/install).

2. Fork the repository to your GitHub account:
  - Go to the [project repository](https://github.com/shyamexe/Dictionary_app_flutter_using_bloc) on GitHub.
  - Click the "Fork" button in the top right corner of the page. This will create a copy of the repository under your GitHub account.

3. Clone the repository to your local machine:

```
git clone https://github.com/<your-username>/projectname.git
```

4. Navigate to the project directory:

```
cd projectname
```

5. Run the app on an emulator or device:

```
flutter run
```
6. Enjoy the app!


## Contributing

1. Create a new branch for your changes:

```
git checkout -b my-new-feature
```

2. Make your changes and commit them:

```
git commit -am "Add new feature"
```

3. Push the branch to your fork:

```
git push origin my-new-feature
```

4. Open a pull request on the [original repository](https://github.com/shyamexe/Dictionary_app_flutter_using_bloc) for the changes to be reviewed and potentially merged.

Note: If you encounter any issues or have questions, feel free to open an issue on the GitHub repository.

You can also use Github UI for forking by simply clicking on fork button.

<!-- A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference. -->
''';
static const String wetherapp=''''
# Weather App

This is a simple weather app built with Flutter that displays the current weather for a given location. The app uses the weatherapi.com API to fetch the weather data and displays it in a user-friendly interface.



## Getting Started

This project is a starting point for a Flutter application that follows the
[simple app state management
tutorial](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple).

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

`Note: You'll need to provide your own weatherapi.com API key in order to fetch weather data. To do this, create a .env file in the root directory of the project and add the following line:`

![image](https://user-images.githubusercontent.com/93277108/232664462-03bca1f6-9e03-490e-9ea3-0256ca1e68cf.png)

![image](https://user-images.githubusercontent.com/93277108/232664671-50b96a09-caee-40a7-bf96-7b482e599c56.png)



## Screenshots

Here are some screenshots of the app:

<table>
    <td>
    <img src="https://user-images.githubusercontent.com/93277108/232668646-1d177a6f-c0f4-47ad-8c0c-173428c43e4c.png" alt="screenshot 1">
    </td>
    <td>
    <img src="https://user-images.githubusercontent.com/93277108/232668971-ff4092fa-a807-4539-ac73-d6b1d70171dc.png" alt="screenshot 2">
    </td>
</table>


## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/docs/development/ui/assets-and-images#resolution-aware).

## Localization

This project generates localized messages based on arb files found in
the `lib/src/localization` directory.

To support additional languages, please visit the tutorial on
[Internationalizing Flutter
apps](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)
''';
static const String adminDAsh=''''

## URL https://sajithlaldev.github.io/Admin-Dashbord-Demo/

test no.9999111111

otp 123456

''';
}