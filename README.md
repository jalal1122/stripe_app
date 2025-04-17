# 💳 Flutter Stripe Payment Integration

This Flutter project demonstrates how to integrate Stripe for processing payments using the official `flutter_stripe` package. It includes a full payment flow: creating a payment intent, initializing the payment sheet, and displaying it to the user.

## 🚀 Features

- Stripe Payment Integration using PaymentSheet
- Secure API calls using `flutter_dotenv`
- Payment success and failure handling
- Clear and simple UI with confirmation dialogs

## 🛠️ Technologies Used

- Flutter
- Dart
- [flutter_stripe](https://pub.dev/packages/flutter_stripe)
- [http](https://pub.dev/packages/http)
- [flutter_dotenv](https://pub.dev/packages/flutter_dotenv)

## 📦 Dependencies

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_stripe: ^9.4.0
  http: ^0.14.0
  flutter_dotenv: ^5.0.2
🔑 Setup Instructions
Clone the Repo

bash
Copy
Edit
git clone https://github.com/your-username/flutter_stripe_payment.git
cd flutter_stripe_payment
Install Packages

bash
Copy
Edit
flutter pub get
Add your Stripe Secret Key

Create a .env file in the root directory.

Add your Stripe secret key:

markdown
Copy
Edit
STRIPE_SECRET=sk_test_**********************
Enable Stripe in Your App

Initialize Stripe in main.dart:

dart
Copy
Edit
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  Stripe.publishableKey = 'pk_test_****************';
  runApp(MyApp());
}
Run the App

bash
Copy
Edit
flutter run
📸 Screenshots

Payment Button	Payment Sheet	Success Dialog
⚠️ Notes
This demo uses test keys from Stripe. Don't forget to replace them with your live keys in production.

Make sure your Stripe account is properly set up to handle payment intents.

📄 License
This project is licensed under the MIT License. Feel free to use and modify as needed.

Made with ❤️ by Imad Khan
yaml
Copy
Edit

---

Let me know if you want the file generated for download or if you’d like to include things like environment variables, API details, or your GitHub repo URL.







