import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: _UiControlsView(),
    );
  }
}

enum Transportation { car, boat, plane, submarine, motorbike }

class _UiControlsView extends StatefulWidget {
  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool onOff = false;
  Transportation? selectedTranspotation;
  bool wantsBreakfast = false; 
  bool wantsLunch = false; 
  bool wantsDinnner = false; 
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: onOff,
          onChanged: (value) => setState(() {
            onOff = !onOff;
          }),
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adcionales'),
        ),
        ExpansionTile(
          title: const Text('Vehículo de transporte'),
          subtitle: (selectedTranspotation == null
              ? const Text('Seleccione Vehiculo')
              : Text('$selectedTranspotation')),
          children: [
            RadioListTile(
                title: const Text('By Car'),
                subtitle: const Text('Travel by Car'),
                value: Transportation.car,
                groupValue: selectedTranspotation,
                onChanged: (value) => setState(
                      () {
                        selectedTranspotation = Transportation.car;
                      },
                    )),
            RadioListTile(
                title: const Text('By Boat'),
                subtitle: const Text('Travel by Boat'),
                value: Transportation.boat,
                groupValue: selectedTranspotation,
                onChanged: (value) => setState(
                      () {
                        selectedTranspotation = Transportation.boat;
                      },
                    )),
            RadioListTile(
                title: const Text('By Plane'),
                subtitle: const Text('Travel by Plane'),
                value: Transportation.plane,
                groupValue: selectedTranspotation,
                onChanged: (value) => setState(
                      () {
                        selectedTranspotation = Transportation.plane;
                      },
                    )),
            RadioListTile(
                title: const Text('By Submarine'),
                subtitle: const Text('Travel by Submarine'),
                value: Transportation.submarine,
                groupValue: selectedTranspotation,
                onChanged: (value) => setState(
                      () {
                        selectedTranspotation = Transportation.submarine;
                      },
                    )),
            RadioListTile(
                title: const Text('By Motorbike'),
                subtitle: const Text('Travel by Motorbike'),
                value: Transportation.motorbike,
                groupValue: selectedTranspotation,
                onChanged: (value) => setState(
                      () {
                        selectedTranspotation = Transportation.submarine;
                      },
                    )),
          ],
        ),
        CheckboxListTile(
        title: const Text('Breakfast Included?'),
        value: wantsBreakfast, 
        onChanged: (value)=> setState(() {
            wantsBreakfast = !wantsBreakfast;
        })),
        CheckboxListTile(
        title: const Text('Launch Included?'),
        value: wantsLunch, 
        onChanged: (value)=> setState(() {
            wantsLunch = !wantsLunch;
        })),
        CheckboxListTile(
        title: const Text('Breakfast Included?'),
        value: wantsDinnner, 
        onChanged: (value)=> setState(() {
            wantsDinnner = !wantsDinnner;
        })),
      
      ],
    );
  }
}
