# Coin Exchanger - Currency Conversion App

**CurrencyExchanger** is a SwiftUI-based application that allows users to convert between different fictional currencies (like silver and gold coins). It provides an intuitive interface for exchanging virtual currencies, making it perfect for role-playing games or world-building projects where multiple types of currency are used.

## Features

- **Simple UI**: The app features a minimalist and clean interface with easy-to-read text fields for inputting amounts and selecting currencies.
- **Real-time Conversion**: As users type amounts into one currency field, the corresponding amount in the other currency is automatically updated.
- **Custom Currencies**: Built-in support for different fictional currencies like **Gold Penny** and **Silver Penny** with icons representing each currency.
- **Currency Selection**: Tap on the currency name or icon to bring up a selector for choosing different currencies.
- **Info Screen**: An accessible info button provides more details about the application and its functionality.
  
## Getting Started

### Prerequisites
- Xcode 15 or later
- iOS 16.0 or later
- SwiftUI 3.0

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/kn00pers/CurrencyExchanger.git
   ```
2. Open the project in Xcode:
   ```bash
   open CurrencyExchanger.xcodeproj
   ```
3. Build and run the project on the simulator or a physical device.

### Usage

1. **Selecting Currencies**: Tap on the currency icon or name to select a different currency from the list.
2. **Entering Amounts**: Enter the amount to be converted in one of the text fields, and the corresponding amount will be calculated automatically.
3. **Viewing Information**: Tap the info icon in the bottom-right corner to view additional information about the app.

### Conversion Logic

The app listens for changes in the amount fields and the selected currencies. When an amount is typed, or a currency is changed, the corresponding amount in the other currency is recalculated using the conversion logic defined in the `Currency` model.

### Screenshots
<img src='https://github.com/user-attachments/assets/5fb6e0a3-d789-468c-87f4-7e55ba08bbb9' width=300 height=600>
<img src='https://github.com/user-attachments/assets/851fb1bb-bfc3-472b-9d36-15c5f1eb7cd5' width=300 height=600>
<img src='https://github.com/user-attachments/assets/6e6c4d73-42de-4919-8e5f-83ec3eace040' width=300 height=600>

## License

This project is licensed under the MIT License.

---

Developed by Patryk Knopp, 2024
