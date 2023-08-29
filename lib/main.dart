
import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'package:khalti_payment_app/homePage.dart';

void main() async {

  runApp(

        MyApp(),
      );
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
      publicKey: '{your_public_key}',

      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Khalti integration app",
          navigatorKey: _,
          home: PaymentPage(),
          theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            // textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
          ),

          supportedLocales: const [
            Locale('en', 'US'),
            Locale('ne', 'NP'),
          ],
          localizationsDelegates: const [
            KhaltiLocalizations.delegate,
            // ... Other localization delegates
          ],

          // ... Other MaterialApp properties
        );
      },
    );
  }
}
