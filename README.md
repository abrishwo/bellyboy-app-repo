
```markdown
# Belly Boy Sample App

Belly Boy Sample App is cross-platform application built in flutter. Currently this app is not fully functional and it is aimed to create user-friendly login UI that can run on different platforms
          

## Table of Contents

- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Screenshots](#screenshots)
- [Features](#features)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgments](#acknowledgments)

## Getting Started

To get started follow the instructions given below and make sure you have stable version of flutter sdk on your machine.
### Prerequisites

- Dart 2.17.6
- Flutter 3.7.12

### Installation

1. Clone the repository:

   ```sh
   git clone https://github.com/abrishwo/bellyboy-app-repo.git
   ```

2. Navigate to the project directory:

   ```sh
   cd app
   ```

3. Install dependencies:

   ```sh
   flutter pub get
   ```

4. Run the app:

   ```sh
   flutter run
   ```

## Usage

Connect your device either physical or virtual and then choice your prefered device, then you are good to go

## Project Structure

app/
|-- lib/
|   |-- core/
|   |   |-- data/
|   |   |   |-- data_sources/
|   |   |   |-- models/
|   |   |-- presentation/
|   |   |   |-- blocs/
|   |   |   |-- screens/
|   |   |   |-- widgets/
|   |   |-- utils/
|   |   |-- app.dart
|   |   |-- routes.dart
|   |   |-- theme.dart
|-- main.dart


## Screenshots

![Invalid Email Login Screen](https://www.dev.enatsoft.com/1.png)
![Valid Email Login Screen](https://www.dev.enatsoft.com/2.png)
![Invalid Password Login Screen](https://www.dev.enatsoft.com/3.png)
![Home](https://www.dev.enatsoft.com/4.png)


## Features

- Multi step login validator.
- user friendly
- responsive



## License

This project is licensed under the [Enat Soft] - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

This project is dependent on Getx and flutter lottie packages.