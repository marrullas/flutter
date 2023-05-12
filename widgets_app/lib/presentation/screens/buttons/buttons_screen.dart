import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Navigator.of(context).pop(); //forma por defecto
          context.pop(); //forma con go_router (go_router.dart)
        },
        child: const Icon(Icons.arrow_back_ios_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text('Elevated Button')),
                      const ElevatedButton(
                onPressed: null, child: Text('Elevated disabled Button')),
            ElevatedButton.icon(
                onPressed: () {}, 
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Elevated Button Icon')),
            FilledButton(onPressed: () {}, child: const Text('Filled Button')),
            FilledButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.abc_sharp), 
              label: const Text('Filled Button Icon')),
            OutlinedButton(
                onPressed: () {}, child: const Text('Outlined Button')),
            OutlinedButton.icon(
                onPressed: () {}, 
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Outlined Button Icon')),
            TextButton(onPressed: () {}, child: const Text('Text Button')),
            TextButton.icon(
                onPressed: () {}, 
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Text Button Icon')),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.access_alarm_rounded)),
            IconButton(
                onPressed: null,
                icon: const Icon(Icons.accessible_outlined),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(colors.primary),
                  iconColor: MaterialStateProperty.all(colors.onPrimary),

                ),
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Material(
        color: Theme.of(context).colorScheme.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Text('Custom Button'),
          ),
        ),
      ),
    );
  }
}