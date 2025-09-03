import 'package:coincap_list/src/injection/global/dependencies_container.dart';
import 'package:flutter/material.dart';

class DependenciesScope extends InheritedWidget {
  const DependenciesScope({
    required this.dependencies,
    required super.child,
    super.key,
  });

  final DependenciesContainer dependencies;

  static DependenciesContainer of(BuildContext context) =>
      context.getInheritedWidgetOfExactType<DependenciesScope>()!.dependencies;

  @override
  bool updateShouldNotify(DependenciesScope oldWidget) => false;
}
