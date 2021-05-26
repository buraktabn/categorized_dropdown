import 'package:categorized_dropdown/categorized_dropdown.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final List<CategorizedDropdownItem<String>>? items = [
    CategorizedDropdownItem(text: 'Exhaust', subItems: [
      SubCategorizedDropdownItem(text: 'Pipes', value: 'pipes'),
      SubCategorizedDropdownItem(text: 'Mufflers', value: 'mufflers'),
      SubCategorizedDropdownItem(text: 'Gaskets', value: 'gaskets'),
    ]),
    CategorizedDropdownItem(text: 'Engine Parts', subItems: [
      SubCategorizedDropdownItem(text: 'Engine mounts', value: 'engine-mounts'),
      SubCategorizedDropdownItem(text: 'Oil Filters', value: 'oil-filters'),
    ]),
    CategorizedDropdownItem(text: 'Fuel & Emission', subItems: [
      SubCategorizedDropdownItem(text: 'Fuel Injection', value: 'fuel-incection'),
      SubCategorizedDropdownItem(text: '02 Sensor', value: 'o2-sensor'),
    ]),
    CategorizedDropdownItem(text: 'Other', value: 'Other'),
  ];
  String? value;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Categorised Dropdown Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Categorised Dropdown')),
        body: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            CategorizedDropdown(
              items: items,
              value: value,
              hint: const Text('Select auto parts'),
              onChanged: (v) {
                setState(() {
                  value = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
