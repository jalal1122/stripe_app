import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_app/homepage.dart';

void main() async{
  //Initialize Flutter Binding
  WidgetsFlutterBinding.ensureInitialized();

  //Assign publishable key to flutter_stripe
  Stripe.publishableKey = "pk_test_51RErNZFR34W8c2fywRoFr2819PRRa3Bj2nx9sWUcgiDP3txAWsmRi9NrkFPtUFrJc5NnfHkCFFLlzqb131DKepPL00KGuQUmwE";

  //Load our .env file that contains our Stripe Secret key
  await dotenv.load(fileName: "lib/.env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
