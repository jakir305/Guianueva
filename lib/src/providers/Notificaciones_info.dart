import 'package:flutter/material.dart';

class NotificacionesInfo with ChangeNotifier {
  bool _notification = false;

  get notificacion {
    return _notification;
  }

  set notificacion(bool nombre) {
    this._notification = nombre;

    notifyListeners();
  }
}
