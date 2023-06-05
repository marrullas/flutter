import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlView(),
    );
  }
}

class _UiControlView extends StatefulWidget {
  const _UiControlView();

  @override
  State<_UiControlView> createState() => _UiControlViewState();
}

enum TransportationMode { car, bike, horse, boat }

class _UiControlViewState extends State<_UiControlView> {
  TransportationMode transportationMode = TransportationMode.car;

  bool isDeveloperMode = false;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Developer mode'),
            subtitle: const Text('Enable developer mode'),
            value: isDeveloperMode,
            onChanged: (value) {
              setState(() {
                isDeveloperMode = !isDeveloperMode;
              });
            }),
        ExpansionTile(
            title: const Text('Transportation mode'),
            subtitle: Text('$transportationMode'),
            children: [
              RadioListTile(
                value: TransportationMode.car,
                title: const Text('Car'),
                subtitle: const Text('Transportation mode Car'),
                groupValue: transportationMode,
                onChanged: (value) => setState(() {
                  transportationMode = TransportationMode.car;
                }),
              ),
              RadioListTile(
                value: TransportationMode.bike,
                title: const Text('Bike'),
                subtitle: const Text('Transportation mode Bike'),
                groupValue: transportationMode,
                onChanged: (value) => setState(() {
                  transportationMode = TransportationMode.bike;
                }),
              ),
              RadioListTile(
                value: TransportationMode.horse,
                title: const Text('Horse'),
                groupValue: transportationMode,
                onChanged: (value) => setState(() {
                  transportationMode = TransportationMode.horse;
                }),
              ),
              RadioListTile(
                value: TransportationMode.boat,
                title: const Text('Boat'),
                groupValue: transportationMode,
                onChanged: (value) => setState(() {
                  transportationMode = TransportationMode.boat;
                }),
              ),
            ]),
        CheckboxListTile(
          title: const Text('Breakfast'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Lauch'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Dinner'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        )
      ],
    );
  }
}
