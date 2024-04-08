import 'package:flutter/material.dart';

class QuerySuccessfullyScreen extends StatelessWidget {
  const QuerySuccessfullyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "images/registerd.png",
              height: 150,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Query has been Sent \nSuccessfully',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: 320,
              child: Text(
                textAlign: TextAlign.center,
                'Thanks! for submitting query, Our team will respond to you 48 hours.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
