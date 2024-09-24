<p>
<img src="https://github.com/user-attachments/assets/72aec46f-6a43-47b5-9386-8310d0fd0709" alt="Image 1" style="margin-right: 10px; margin-bottom: 10px;" width="20%"> 
 <img src="https://github.com/user-attachments/assets/9995acb3-208c-42ae-9c65-5f7a0e5114f9" alt="Image 1" style="margin-right: 10px; margin-bottom: 10px;" 
    width="20%">
 <img src="https://github.com/user-attachments/assets/84bab6a5-0b3b-4e92-9fd7-eef3008de4b5" alt="Image 1" style="margin-right: 10px; margin-bottom: 10px;" width="20%"> 
 <img src="https://github.com/user-attachments/assets/7f78bda1-a3e1-4329-af5f-f55a533c4404" alt="Image 1" style="margin-right: 10px; margin-bottom: 10px;" width="20%"> 
  </p>



# Stripe Payment Integration


This project demonstrates the integration of Stripe payment in a Flutter app using GetX state management. It covers all the essential steps to implement secure payment processing with Stripe in a Flutter application.

## Features

- **Stripe Payment Gateway**: Seamless integration of Stripe for handling payments.
- **GetX State Management**: Efficient state management and routing using GetX.
- **Secure Transactions**: Securely handle payments with Stripe’s API.
- **User-friendly Payment Flow**: A smooth and intuitive user experience for payments.

## Technologies Used

- **Flutter**: Cross-platform mobile app development.
- **Dart**: Programming language for Flutter.
- **Stripe API**: Payment processing via Stripe.
- **GetX**: State management and routing.

## Getting Started

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/stripe-flutter-integration.git
   cd stripe-flutter-integration
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Set up Stripe**:
   - Sign up at [Stripe](https://stripe.com) and get your API keys.
   - Add your Stripe API keys in the environment/configuration files.

4. **Run the app**:
   ```bash
   flutter run
   ```

## Code Structure

- **lib/controllers/payment_controller.dart**: Handles all payment logic using GetX.
- **lib/screens/payment_screen.dart**: UI for payment processing and flow.
- **lib/services/stripe_service.dart**: Handles interaction with the Stripe API.
  
## Stripe API Integration

1. **Install the Stripe package**:
   Add the Stripe package to your `pubspec.yaml` file:
   ```yaml
   flutter_stripe 11.1.0 
   ```

2. **Initialize Stripe**:
   In your app's main file, initialize Stripe with your publishable key:
   ```dart
   Stripe.publishableKey = "your-publishable-key";
   ```

3. **Payment Flow**:
   Implement the flow for charging the user using Stripe’s payment APIs in the `PaymentController`.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or issues, feel free to reach out at [arbabhussain414@gmail.com](arbabhussain414@gmail.com).

