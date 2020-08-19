import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  static final PreferenciasUsuario _instancia =
      new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  //Get y Set

  // nombre
  get name {
    return _prefs.getString('name') ?? '';
  }

  set name(String valor) {
    _prefs.setString('name', valor);
  }

  //email
  get email {
    return _prefs.getString('email') ?? '';
  }

  set email(String valor) {
    _prefs.setString('email', valor);
  }

  //imagen de perfil
  get imageUrl {
    return _prefs.getString('imageUrl') ?? '';
  }

  set imageUrl(String valor) {
    _prefs.setString('imageUrl', valor);
  }

  //imagen de perfil Asset
  get imageAsset {
    return _prefs.getString('imageAsset') ?? '';
  }

  set imageAsset(String valor) {
    _prefs.setString('imageAsset', valor);
  }
}
