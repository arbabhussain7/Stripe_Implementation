import 'dart:convert';

import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;
import 'package:stripe_payment/const.dart';

class StripeServices {
  StripeServices._();
  static final StripeServices instance = StripeServices._();
  Future<void> makePayment() async {
    try {
      String? paymentIntentClientSecret = await _createPaymentIntent(10, "USD");
      if (paymentIntentClientSecret != null) return;
      await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: "Arbab Hussain",
      ));

      await _processPayment();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<String?> _createPaymentIntent(int amount, String currency) async {
    try {
      Map<String, dynamic> data = {
        "amount": calculateAmount(amount),
        "currency": currency,
        'Payment_method_types[]': "card"
      };

      var response = await http.post(
          Uri.parse("https://api.stripe.com/v1/payment_intent"),
          body: data,
          headers: {
            // "Authorization": "Bearer $_stripeSecretKey",
            "content-Type": "application/x-www-form-urlencoded"
          });
      if (response != null) {
        // Decode the JSON response body
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        // Access "Client_data" from the decoded map
        return responseData["Client_data"];
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  Future<void> _processPayment() async {
    try {
      await Stripe.instance.presentPaymentSheet();
    } catch (e) {
      print(e.toString());
    }
  }

  calculateAmount(int amount) {
    final price = amount * 100;
    return price.toString();
  }
}
