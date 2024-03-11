import 'package:flutter/material.dart';

class EndTranslationScreen extends StatelessWidget {
  const EndTranslationScreen({super.key});

  // Functions for handling button presses in the dialog
  void onYesSavePressed() {
    // Implement your Yes & Save functionality here
  }

  void onYesPressed() {
    // Implement your Yes functionality here
  }

  void onCancelPressed() {
    // Implement your Cancel functionality here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('End Translation'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Do you Want to End this Translation'),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.mic),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (context) => ThreeButtonDialog(
            onYesSavePressed: onYesSavePressed,
            onYesPressed: onYesPressed,
            onCancelPressed: onCancelPressed,
          ),
        ),
        child: const Icon(Icons.warning),
      ),
    );
  }
}

// This is the custom widget for the 3 button dialog
class ThreeButtonDialog extends StatelessWidget {
  final Function onYesSavePressed;
  final Function onYesPressed;
  final Function onCancelPressed;

  const ThreeButtonDialog({
    Key? key,
    required this.onYesSavePressed,
    required this.onYesPressed,
    required this.onCancelPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Do you Want to End this Translation'),
      actions: [
        TextButton(
          onPressed: () => onYesSavePressed(),
          child: const Text('Yes & Save'),
        ),
        TextButton(
          onPressed: () => onYesPressed(),
          child: const Text('Yes'),
        ),
        TextButton(
          onPressed: () => onCancelPressed(),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
