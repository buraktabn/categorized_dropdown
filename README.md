# [categorized_dropdown](https://pub.dev/packages/categorized_dropdown)

Categorized dropdown created using base dropdown widget of the Flutter.
  



Dropdown Field             |  Dropdown Items
:-------------------------:|:-------------------------:
<img  src="https://github.com/buraktabn/categorized_dropdown/blob/main/images/dropdown-field.png?raw=true"  width="300" /> |  <img  src="https://github.com/buraktabn/categorized_dropdown/blob/main/images/dropdown-items.png?raw=true"  width="300" />


  

## Getting Started

  
### Depend on it

Run this command:

With Flutter:

```shell
 $ flutter pub add categorized_dropdown
```
This will add a line like this to your package's pubspec.yaml (and run an implicit  `dart pub get`):
```yaml
dependencies:
   categorized_dropdown:  1.0.0
```
Alternatively, your editor might support  `flutter pub get`. Check the docs for your editor to learn more.
  

### Import it

Now in your Dart code, you can use:

  

```dart
import  'package:categorized_dropdown/categorised_dropdown.dart';
```

## Example

```dart
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
```
```dart
String? value;
```
```dart
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
```

## Contributions

 
Contributions of any kind are more than welcome! Feel free to fork and improve in any way you want, make a pull request, or open an issue.
