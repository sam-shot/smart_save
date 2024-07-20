
import 'package:flutter/material.dart';
import 'package:smart_save/src/core/extensions/context.extension.dart';

class AppNavigator {
  final GlobalKey<NavigatorState> _navigatorKey;
  AppNavigator(this._navigatorKey) {
    _context = _navigatorKey.currentContext!;
  }

  late BuildContext _context;

  void push(Widget page) {
    _context.push(page);
  }

  void replace(Widget page) {
    _context.replace(page);
  }

  void go(Widget page) {
    _context.go(page);
  }

  void pop() {
    _context.pop();
  }
}
