library categorized_dropdown;

import 'package:flutter/widgets.dart';

import 'sub_dropdown_item.dart';

class CategorizedDropdownItem<T> {
  final String? text;
  final Widget? widget;
  final T? value;
  final List<SubCategorizedDropdownItem<T>>? subItems;

  CategorizedDropdownItem({
    this.text,
    this.widget,
    this.value,
    this.subItems,
  }) : assert((text != null && widget == null) || (text == null && widget != null));
}
