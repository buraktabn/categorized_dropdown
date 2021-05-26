library categorized_dropdown;

import 'package:flutter/widgets.dart';

class SubCategorizedDropdownItem<T> {
  final String? text;
  final Widget? widget;
  final T value;
  final bool enabled;

  SubCategorizedDropdownItem({
    this.text,
    this.widget,
    required this.value,
    this.enabled = true,
  }) : assert((text != null && widget == null) || (text == null && widget != null));
}
