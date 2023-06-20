import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ValueService extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  set count(int value) {
    _count = value;
    notifyListeners();
  }
}

class ColorService extends ChangeNotifier {
  Color _color = Colors.red;

  Color get color => _color;

  set color(Color value) {
    _color = value;
    notifyListeners();
  }
}

class CombinedService {
  void setBothColorAndValue(BuildContext context, Color c, int v) {
    var colorService = Provider.of<ColorService>(context, listen: false);
    var valueService = Provider.of<ValueService>(context, listen: false);

    colorService.color = c;
    valueService.count = v;
  }
}
