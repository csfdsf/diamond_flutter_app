# diamond_filter_app

A new Flutter project.

## Getting Started

#  Diamond Filter App (Flutter)

A Flutter mobile application that allows users to filter and search for diamonds based on specific criteria like shape, carat, lab, color, and clarity. Users can also view search results, manage a shopping cart, and calculate totals including tax, discounts, and delivery.

## 📸 Screenshots

### 🧮 Filter Screen
![Filter Screen]([screenshots](https://raw.githubusercontent.com/csfdsf/diamond_filter_app/main/assets/screenShots/filter_screen.jpg)

### 💎 Results Screen
![Results Screen](screenshots/result_screen.png)

### 🛒 Cart Screen
![Cart Screen](screenshots/cart_screen.png)

##  Project Structure

diamond_filter_app/ │ ├── blocs/ # BLoC logic for state management │ ├── cart_bloc.dart │ ├── cart_event.dart │ ├── cart_state.dart │ ├── filter_bloc.dart │ ├── models/ # Model classes │ ├── diamond_model.dart │ └── cart_item.dart │ ├── data/ # Static data source │ └── data.dart │ ├── screens/ # All UI screens │ ├── filter_screen.dart # Filter form UI │ ├── result_screen.dart # Filtered results │ └── cart_screen.dart # Cart with totals │ ├── assets/images/ # Diamond shape images │ ├── main.dart # App entry point └── README.md


## 🔄 State Management

The app uses the **BLoC (Business Logic Component)** pattern for state management.

###  `FilterBloc`
Handles:
- Capturing and processing filter inputs (shape, carat, lab, etc.)
- Filtering diamonds from a static dataset

###  `CartBloc`
Handles:
- Adding/removing diamonds from cart
- Quantity changes per item
- Calculating:
    - Subtotal (after discounts)
    - Delivery charges
    - Taxes
    - Grand Total

---

##  Persistent Storage

Currently, this version does **not use local persistent storage**, but is structured for future expansion with:

- `shared_preferences` for simple storage
- `hive` or `hydrated_bloc` for state persistence

---

##  Features

- **Dynamic Filtering**: Shape, Carat range, Lab, Color, Clarity
- **Real-time Result Display**: Filtered diamonds from local dataset
- **Shopping Cart**:
    - Add/Remove items
    - Quantity controls
    - Discount & Tax calculations
-  **Clean Bottom Summary UI**:
    - Total Carat
    - Total Discount
    - Total Tax
    - Final Amount
-  **Validation**: Ensures required fields like shape, carat, and lab are selected

---

## ️ Run Instructions

###  Prerequisites
- Flutter SDK (v3.10+ recommended)
- Android Studio or VS Code

###  To Run the App

```bash
git clone https://github.com/csfdsf/diamond_flutter_app.git
cd diamond_flutter_app/diamond_filter_app
flutter pub get
flutter run

