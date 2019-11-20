# Books

Books is iOS/iPadOS/macOS app which helps to  manage your favorite books.

<a href="https://twitter.com/minikin"><img src="https://i.ibb.co/0B5TgD9/wip.png" alt="map" border="0"></a>

## Meta

**State:** development

**Point People:** [Sasha Prokhorenko](mailto:djminikin@gmail.com)

**CI:** [![Build Status](https://app.bitrise.io/app/0ed3e2e48e0d9e8b/status.svg?token=d54LNFUhSdRINlIFoi9jXQ)](https://app.bitrise.io/app/0ed3e2e48e0d9e8b)

---

- [Books](#books)
  - [Meta](#meta)
  - [Requirements](#requirements)
  - [Dependencies](#dependencies)
  - [Installation](#installation)
  - [Running the project](#running-the-project)
  - [Development](#development)
    - [Project Structure](#project-structure)
  - [Run Tests](#run-tests)
  - [Warnings](#warnings)

## Requirements

- iOS 13.0+ / macOS 10.14.5+
- Xcode 11.0+
- Swift 5.1+

## Dependencies

In the project I don't use any third party dependencies.

---

## Installation

```sh
git clone https://github.com/minikin/books-swiftui.git && cd books-swiftui && xed .
```

---

## Running the project

To run the app from Xcode, open the file `Books.xcodeproj` and run the Scheme `Books`.
Running from Xcode always launches the app with the build configuration `Debug`.

---

## Development

### Project Structure

In the project folder, there are a few important files:

- `Books.xcodeproj`: This is the main Xcode workspace file. To open the project with Xcode, always use this file instead of the project file.

Inside the Xcode project, there are a few separations:

- [`SwiftComposable`](https://github.com/minikin/SwiftComposable) Swift Package
  - Contains foundation sources that are used in multiple components of the app, like a Networking client.
- `Books` app target
  - The app target uses `SwiftComposable`
  - Inside of the app target, code is separated further with groups
    - There is a group `Application` with general app parts used by multiple features, like actions, reducers
    - For each feature (AllItems, ItemDetails, ...) there is an additional group that contains everything that is only necessary for this feature.

---

## Run Tests

The Books project contains one unit test target: `BooksTests`.

- To run all tests from Xcode, select the Scheme `Books` and press _CMD_ + _U_ or select test from Xcode's dropdown.

---

## Warnings

Please, keep in mind that SwiftUI is still in an early stage.
