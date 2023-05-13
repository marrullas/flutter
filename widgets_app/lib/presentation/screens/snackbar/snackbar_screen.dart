import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('This is a custom snackbar'),
        duration: const Duration(seconds: 1),
        backgroundColor: Colors.green,
        action: SnackBarAction(
          label: 'UNDO',
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar Screen'),
      ),
      body: const _SnackbarView(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showCustomSnackbar(context);
        },
        label: const Text('Show Snackbar'),
        icon: const Icon(Icons.message),
      ),
    );
  }
}

class _SnackbarView extends StatelessWidget {
  const _SnackbarView();

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // no se puede cerrar con tap fuera del dialog
      builder: (context) => AlertDialog(
        title: const Text('This is a custom dialog'),
        content: const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        actions: [
          FilledButton(onPressed: (){}, 
          child: const Text('Cancel')),
          TextButton(
            onPressed: () {
              //Navigator.of(context).pop(); // volver por defecto
              context.pop(); // go_router
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(

              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'This is a custom dialog, lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
                ]);
              },
              child: const Text('Show Snackbar')),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Show Dialog')),
        ],
      ),
    );
  }
}
